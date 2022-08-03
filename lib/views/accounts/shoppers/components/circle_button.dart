import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key? key,
    required this.iconData,
    required this.pressed,
    required this.bgColor,
    required this.iconColor,
  }) : super(key: key);

  final Color bgColor;
  final Color iconColor;
  final VoidCallback pressed;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressed,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: bgColor,
        ),
        child: Icon(
          iconData,
          size: 20.0,
          color: iconColor,
        ),
      ),
    );
  }
}
