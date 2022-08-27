import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/dimensions.dart';

class MiniButton extends StatelessWidget {
  const MiniButton({
    Key? key,
    required this.size,
    required this.width,
    required this.title,
    required this.iconPath,
    required this.onBtnPressed,
  }) : super(key: key);

  final double width;
  final Size size;
  final String title;
  final String iconPath;
  final VoidCallback onBtnPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onBtnPressed,
      child: Container(
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
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
              height: 20.0,
              width: 20.0,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: size.height * 0.016,
                fontWeight: FontWeight.w400,
                fontFamily: kDefaultFont,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
