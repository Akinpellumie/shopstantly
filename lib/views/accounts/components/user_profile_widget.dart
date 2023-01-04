import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/dimensions.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget(
      {Key? key,
      required this.size,
      required this.lastname,
      required this.firstname,
      required this.role,
      required this.height,
      required this.imagePath})
      : super(key: key);

  final Size size;
  final String lastname;
  final String firstname;
  final String imagePath;
  final String role;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: height,
          width: height,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kProfileBannerColor,
            border: Border.all(color: Colors.white, width: 5.0),
          ),
          child: ClipOval(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          firstname,
          style: TextStyle(
            color: kPrimaryTextColor,
            fontFamily: kDefaultFont,
            fontWeight: FontWeight.w500,
            fontSize: size.height * 0.0120,
          ),
        ),
        Text(
          lastname,
          style: TextStyle(
            color: kPrimaryTextColor,
            fontFamily: kDefaultFont,
            fontWeight: FontWeight.w500,
            fontSize: size.height * 0.0120,
          ),
        ),
        Text(
          role,
          style: TextStyle(
            color: kPlaceholderColor,
            fontFamily: kDefaultFont,
            fontWeight: FontWeight.normal,
            fontSize: size.height * 0.0115,
          ),
        ),
      ],
    );
  }
}
