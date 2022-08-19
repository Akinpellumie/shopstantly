import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CircleAvatarWithTick extends StatelessWidget {
  const CircleAvatarWithTick({
    Key? key,
    required this.imageUrl,
    required this.tickBgColor,
  }) : super(key: key);

  final String imageUrl;
  final Color tickBgColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          maxRadius: 20,
        ),
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: Container(
            height: 15.0,
            width: 15.0,
            //padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: tickBgColor,
              shape: BoxShape.circle,
              border: Border.all(
                width: 1.0,
                color: kPrimaryColor,
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.check,
                color: kWhiteColor,
                size: 10.0,
              ),
            ),
          ),
        )
      ],
    );
  }
}
