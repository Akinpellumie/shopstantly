import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/assets_path.dart';
import '../../../../utils/dimensions.dart';

class MiniButton extends StatelessWidget {
  const MiniButton({
    Key? key,
    required this.size,
    required this.title,
    required this.iconPath,
  }) : super(key: key);

  final Size size;
  final String title;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.35,
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: kPrimaryColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconPath,
            color: kPrimaryColor,
            height: 25.0,
            width: 25.0,
          ),
          const SizedBox(
            width: 5.0,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: size.height * 0.015,
              fontWeight: FontWeight.w400,
              fontFamily: kDefaultFont,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
