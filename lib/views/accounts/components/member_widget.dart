import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopstantly_app/views/accounts/components/user_profile_widget.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/dimensions.dart';


class MemberWidget extends StatelessWidget {
  const MemberWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Executive (10)',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontFamily: kDefaultFont,
                    fontWeight: FontWeight.w500,
                    fontSize: size.height * 0.0200,
                  ),
                ),
              ),
            ),
            const Icon(
              CupertinoIcons.search,
              color: kLightGrayColor,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            UserProfileWidget(
              size: size,
              imagePath: AssetsPath.profileDp,
              firstname: 'Lade',
              lastname: 'Ajala',
              role: 'Designer',
              height: size.height * 0.100,
            ),
            UserProfileWidget(
              size: size,
              imagePath: AssetsPath.profileDp,
              firstname: 'Oyinlade',
              lastname: 'Ajala',
              role: 'Designer',
              height: size.height * 0.100,
            ),
            UserProfileWidget(
              size: size,
              imagePath: AssetsPath.profileDp,
              firstname: 'Akinpelumi',
              lastname: 'Ade',
              role: 'Developer',
              height: size.height * 0.100,
            ),
            UserProfileWidget(
              size: size,
              imagePath: AssetsPath.profileDp,
              firstname: 'Emmanuel',
              lastname: 'Ade',
              role: 'CTO',
              height: size.height * 0.100,
            ),
            UserProfileWidget(
              size: size,
              imagePath: AssetsPath.profileDp,
              firstname: 'Tosin',
              lastname: 'Ajewole',
              role: 'Designer',
              height: size.height * 0.100,
            ),
          ],
        ),
      ],
    );
  }
}
