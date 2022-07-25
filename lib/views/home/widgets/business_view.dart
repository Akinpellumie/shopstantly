import 'package:flutter/material.dart';

import '../components/business_card_item.dart';
import '../components/news_card_item.dart';

class BusinessView extends StatelessWidget {
  const BusinessView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BusinessCardItem(size: size),
        const SizedBox(
          height: 15.0,
        ),
        BusinessCardItem(size: size),
        const SizedBox(
          height: 15.0,
        ),
        BusinessCardItem(size: size),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
