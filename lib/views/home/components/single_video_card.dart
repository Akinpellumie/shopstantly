import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../components/video_card.dart';


class SingleVideoCard extends StatelessWidget {
  const SingleVideoCard({
    Key? key,
    required this.size,
    required this.videoUrl,
  }) : super(key: key);

  final Size size;
  final String videoUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    width: size.width,
    child: Container(
      height: size.height * 0.40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: VideoCard(
          videoPlayerController: VideoPlayerController.network(
            videoUrl,
            videoPlayerOptions: VideoPlayerOptions(
              allowBackgroundPlayback: true,
            ),
          ),
          size: size,
        ),
      ),
    ),
            );
  }
}
