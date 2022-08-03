import 'package:flutter/material.dart';

import '../components/news_card_item.dart';

class NewsView extends StatefulWidget {
  const NewsView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewsCardItem(
          imageCount: 4,
          size: widget.size,
          imageUrls: _image4Urls,
        ),
        const SizedBox(
          height: 30.0,
        ),
        NewsCardItem(
          imageCount: 1,
          size: widget.size,
          imageUrls: _image3Urls,
        ),
        const SizedBox(
          height: 30.0,
        ),
        NewsCardItem(
          imageCount: 2,
          size: widget.size,
          imageUrls: _image2Urls,
        ),
        const SizedBox(
          height: 30.0,
        ),
        NewsCardItem(
          imageCount: 3,
          size: widget.size,
          imageUrls: _image3Urls,
        ),
        const SizedBox(
          height: 30.0,
        ),
      ],
    );
  }

  final List<String> _image3Urls = [
    'https://i.pravatar.cc/300?img=1',
    'https://i.pravatar.cc/300?img=3',
    'https://i.pravatar.cc/300?img=7'
  ];

  final List<String> _image4Urls = [
    'https://i.pravatar.cc/300?img=2',
    'https://i.pravatar.cc/300?img=5',
    'https://i.pravatar.cc/300?img=9',
    'https://i.pravatar.cc/300?img=8'
  ];

  final List<String> _image2Urls = [
    'https://i.pravatar.cc/300?img=9',
    'https://i.pravatar.cc/300?img=8'
  ];
}
