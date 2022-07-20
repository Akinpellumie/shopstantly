import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';


class CircleIconButton extends StatelessWidget {
  const CircleIconButton({
    Key? key,
    required this.size,
    required this.iconData,
    required this.iconColor,
    required this.bgColor,
    required this.iconSize,
  }) : super(key: key);

  final Size size;
  final IconData iconData;
  final Color bgColor;
  final Color iconColor;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: size.width * 0.100,
      padding: const EdgeInsets.symmetric(
          horizontal: 5.0, vertical: 5.0),
      decoration: BoxDecoration(
          border: Border.all(
            color: bgColor,
            width: 1.0,
          ),
          shape: BoxShape.circle,
          color: bgColor),
      child: Icon(
        iconData,
        size: iconSize,
        color: iconColor,
      ),
    );
  }
}
