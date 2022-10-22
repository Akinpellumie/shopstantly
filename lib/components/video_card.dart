import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoCard extends StatefulWidget {
  final Size size;
  final VideoPlayerController videoPlayerController;
  const VideoCard({
    Key? key,
    required this.videoPlayerController,
    required this.size,
  }) : super(key: key);

  @override
  State<VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  //  = VideoPlayerController.network(
  //     'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
  late ChewieController chewieController;
  int currentIndex = 0;
@override
void initState() {
  super.initState();
  chewieController = ChewieController(
    videoPlayerController: widget.videoPlayerController,
    aspectRatio:5/8,
    autoInitialize: false,
    autoPlay: false,
    looping: true,
    errorBuilder: (context, errorMessage) {
      return Center(
        child: Text(
          errorMessage,
          style: const TextStyle(color: Colors.white),
        ),
      );
    },
  );
}
  @override
  void dispose() {
    widget.videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size.width,
      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Chewie(
      controller: chewieController,
    ),
      ),
    );
  }
}
