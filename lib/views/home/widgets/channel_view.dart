import 'package:flutter/material.dart';

import '../components/channel_card_item.dart';

class ChannelView extends StatefulWidget {
  final Size size;
  const ChannelView({Key? key, required this.size}) : super(key: key);

  @override
  State<ChannelView> createState() => _ChannelViewState();
}

class _ChannelViewState extends State<ChannelView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChannelCardItem(
          size: widget.size,
          videoUrl: videoUrl,
        ),
        const SizedBox(
          height: 20.0,
        ),
        ChannelCardItem(
          size: widget.size,
          videoUrl: videoUrl,
        ),
        const SizedBox(
          height: 20.0,
        ),
        ChannelCardItem(
          size: widget.size,
          videoUrl: videoUrl,
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
  }

  final videoUrl =
      'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4';
}
