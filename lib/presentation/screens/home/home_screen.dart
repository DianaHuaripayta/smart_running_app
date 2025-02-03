import 'package:flutter/material.dart';
import 'package:smart_running_app/presentation/screens/home/link_detail_screen.dart';
import 'package:smart_running_app/presentation/widgets/side_menu.dart';
import 'package:video_player/video_player.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String videoUrl;
 final String link;
  SlideInfo({
    required this.title,
    required this.caption,
    required this.videoUrl,
     required this.link,
  });
}

final slides = [
  SlideInfo(
      title: 'Hybrid Runner  (Corredor Híbrido)',
      caption:
          'Enfocado en mejorar tanto la velocidad/resistencia como la fuerza muscular.',
      videoUrl: 'assets/clips/1.mp4',
      link: 'Go to table'
      ),
  SlideInfo(
      title: 'Entrega Rápida',
      caption: 'Lorem nulla pariatur nisi consequat ea cupidatat ipsum a pariatur nisi consequat.',
      videoUrl: 'assets/clips/2.mp4',
        link: 'Go to table'),
  SlideInfo(
      title: 'Disfruta de la comida',
      caption: 'Lorem nulla pariatur nisi consequat ea cupidatat ipsum ass pariatur nisi consequat.',
      videoUrl: 'assets/clips/3.mp4',
        link: 'Go to table'),
];

class HomeScreen extends StatefulWidget {
  static const String name = 'Smart Running App';
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
        title: const Text('Smart Running App'),
      ),
      body: PageView.builder(
        controller: pageViewController,
        physics: const BouncingScrollPhysics(),
        itemCount: slides.length,
        itemBuilder: (context, index) {
          return _SlideWidget(slide: slides[index]);
        },
        onPageChanged: (index) {
          // Optional: Add logic if needed when page changes
        },
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
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10,4,10,36),
          child: Text(
            slide.caption,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.normal),
          ),
        ),
             Padding(
          padding: const EdgeInsets.fromLTRB(10, 4, 10, 36),
          child: InkWell(
            onTap: () {
              // Navegar a una nueva pantalla
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LinkDetailScreen(link: slide.link),
                ),
              );
            },
            child: Text(
              slide.link,
              style: TextStyle(
                color: Colors.blue, // Color azul como los enlaces web
                decoration: TextDecoration.underline, // Subrayado como <a>
                fontWeight: FontWeight.w500,
              ),
            ),
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
    _initializeVideo();
  }

  void _initializeVideo() {
    _controller = VideoPlayerController.asset(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {});
        _controller.play(); // Reproduce automáticamente el video
        _controller.setLooping(true); // Hacer que el video se repita
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