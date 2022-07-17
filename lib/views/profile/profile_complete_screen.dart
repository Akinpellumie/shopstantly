import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/assets_path.dart';
import 'package:shopstantly_app/utils/dimensions.dart';

import '../../utils/app_button.dart';
import '../../utils/custom_router.dart';

class ProfileCompleteScreen extends StatefulWidget {
  const ProfileCompleteScreen({Key? key}) : super(key: key);

  @override
  State<ProfileCompleteScreen> createState() => _ProfileCompleteScreenState();
}

class _ProfileCompleteScreenState extends State<ProfileCompleteScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Image.asset(
                AssetsPath.logo,
                fit: BoxFit.fitHeight,
                height: size.height * 0.10,
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Great!\nYour Profile Is Now\nCompleted Successfully!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kDarkColor,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.normal,
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.020,
                      ),
                    ),
                    Image.asset(
                      AssetsPath.profileComplete,
                      height: size.height * 0.50,
                    ),
                  ],
                ),
              ),
              AppButton(
                text: "Continue",
                type: ButtonType.primary,
                onPressed: () {
                  CustomRouter.nextScreen(context, "/activity");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
