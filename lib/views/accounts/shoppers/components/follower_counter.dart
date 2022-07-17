import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/dimensions.dart';


class FollowerCounter extends StatelessWidget {
  const FollowerCounter({
    Key? key,
    required this.size,
    required this.title,
    required this.count,
  }) : super(key: key);

  final Size size;
  final String title;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(
            fontSize: size.height * 0.015,
            fontWeight: FontWeight.w500,
            fontFamily: kDefaultFont,
            color: kPrimaryColor,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: size.height * 0.015,
            fontWeight: FontWeight.bold,
            fontFamily: kDefaultFont,
            color: kSecondaryTextColor,
          ),
        ),
      ],
    );
  }
}
