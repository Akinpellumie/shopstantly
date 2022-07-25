import 'package:flutter/material.dart';

import '../components/news_card_item.dart';

class NewsView extends StatelessWidget {
  const NewsView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewsCardItem(size: size),
        const SizedBox(
          height: 15.0,
        ),
        NewsCardItem(size: size),
        const SizedBox(
          height: 15.0,
        ),
        NewsCardItem(size: size),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
