import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;

  const VideoPlayerWidget({
    required this.videoUrl,
    Key? key,
  }) : super(key: key);

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;
  bool _isLoading = true;
  bool _hasError = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  Future<void> _initializeVideo() async {
    try {
      setState(() {
        _isLoading = true;
        _hasError = false;
      });

      _controller = VideoPlayerController.asset(
        widget.videoUrl,  // Cambiado para cargar desde assets
      );

      await _controller.initialize();
      _controller.addListener(_videoListener);

      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
        _hasError = true;
        _errorMessage = 'Error al cargar el video: $e';
      });
      print('Error inicializando video: $e');
    }
  }

  void _videoListener() {
    if (mounted) {
      setState(() {
        _isPlaying = _controller.value.isPlaying;
      });
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_videoListener);
    _controller.dispose();
    super.dispose();
  }

  void _togglePlay() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
      } else {
        _controller.play();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (_hasError) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, color: Colors.red, size: 48),
            const SizedBox(height: 16),
            Text(
              _errorMessage ?? 'Error al cargar el video',
              style: const TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _initializeVideo,
              child: const Text('Reintentar'),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              VideoPlayer(_controller),
              _buildControls(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildControls() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Colors.black.withOpacity(0.5),
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(
              _isPlaying ? Icons.pause : Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
            onPressed: _togglePlay,
          ),
          Expanded(
            child: VideoProgressIndicator(
              _controller,
              allowScrubbing: true,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              colors: const VideoProgressColors(
                playedColor: Colors.red,
                bufferedColor: Colors.white24,
                backgroundColor: Colors.white54,
              ),
            ),
          ),
          ValueListenableBuilder<VideoPlayerValue>(
            valueListenable: _controller,
            builder: (context, value, child) {
              return Text(
                '${_formatDuration(value.position)} / ${_formatDuration(value.duration)}',
                style: const TextStyle(color: Colors.white),
              );
            },
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String minutes = twoDigits(duration.inMinutes.remainder(60));
    String seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }
}