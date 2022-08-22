import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/assets_path.dart';
import '../../../../utils/dimensions.dart';

class FollowerCounter extends StatelessWidget {
  const FollowerCounter({
    Key? key,
    required this.size,
    required this.title,
    required this.count,
    this.hasIcon = false,
    this.icon,
  }) : super(key: key);

  final Size size;
  final String title;
  final String count;
  final bool hasIcon;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              count,
              style: TextStyle(
                fontSize: size.height * 0.0190,
                fontWeight: FontWeight.w500,
                fontFamily: kDefaultFont,
                color: kPrimaryColor,
              ),
            ),
            Visibility(
              visible: hasIcon,
              child: Row(
                children: [
                  const SizedBox(
                    width: 5.0,
                  ),
                  icon ??
                      SvgPicture.asset(
                        AssetsPath.starFillIcon,
                        color: Colors.amber,
                        width: size.height * 0.0190,
                        height: size.height * 0.0190,
                      ),
                ],
              ),
            ),
          ],
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: size.height * 0.0160,
            fontWeight: FontWeight.w400,
            fontFamily: kDefaultFont,
            color: kSecondaryTextColor,
          ),
        ),
      ],
    );
  }
}
