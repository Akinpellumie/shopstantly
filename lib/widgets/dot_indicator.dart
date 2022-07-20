import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Container(
      height: 5,
      width: 5,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentIndex == index
            ? Theme.of(context).primaryColor
            : kPrimaryAccentColor,
      ),
    );
  }
}
