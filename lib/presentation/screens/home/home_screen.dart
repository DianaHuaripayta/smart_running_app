import 'package:flutter/material.dart';
import 'package:smart_running_app/presentation/widgets/side_menu.dart';
import 'package:video_player/video_player.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String videoUrl;

  SlideInfo({
    required this.title,
    required this.caption,
    required this.videoUrl,
  });
}

final slides = [
  SlideInfo(
      title: 'Buscar la comida',
      caption:
          'Lorem nulla pariatur nisi consequat ea cupidatat ipsum a pariatur nisi consequat pariatur nisi consequat.',
      videoUrl: 'assets/clips/1.mp4'),
  SlideInfo(
      title: 'Entrega Rápida',
      caption: 'Lorem nulla pariatur nisi consequat ea cupidatat ipsum a pariatur nisi consequat.',
      videoUrl: 'assets/clips/2.mp4'),
  SlideInfo(
      title: 'Disfruta de la comida',
      caption: 'Lorem nulla pariatur nisi consequat ea cupidatat ipsum ass pariatur nisi consequat.',
      videoUrl: 'assets/clips/3.mp4'),
];

class HomeScreen extends StatefulWidget {
     static const String name = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pageViewController = PageController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: PageView(
        controller: pageViewController,
        physics: const BouncingScrollPhysics(),
        children: slides.map((slideData) => _SlideWidget(slide: slideData)).toList(),
      ),
      drawer: SideMenu(scaffoldKey: scaffoldKey),
    );
  }
}

class _SlideWidget extends StatelessWidget {
  final SlideInfo slide;
  const _SlideWidget({required this.slide});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: _VideoPlayerWidget(videoUrl: slide.videoUrl),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            slide.title,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            slide.caption,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}

class _VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;
  const _VideoPlayerWidget({required this.videoUrl});

  @override
  State<_VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<_VideoPlayerWidget> {
  late VideoPlayerController _controller;

@override
void initState() {
  super.initState();
  print("Initializing video player with URL: ${widget.videoUrl}");
  _controller = VideoPlayerController.asset(widget.videoUrl)
    ..initialize().then((_) {
      setState(() {});
    }).catchError((error) {
      print("Error initializing video: $error");
    });
}

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
        : Center(child: CircularProgressIndicator());
  }
}