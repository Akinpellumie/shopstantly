import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopstantly_app/utils/app_button.dart';
import 'package:shopstantly_app/utils/custom_router.dart';

import '../../utils/app_colors.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Let’s Get Started",
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: kPrimaryTextColor,
                  ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "Sign In Or Create New Account",
              style: TextStyle(
                color: kSubTextColor,
                fontSize: size.height * 0.0180,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            SvgPicture.asset(
              "assets/images/get_started.svg",
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 60.0,
            ),
            AppButton(
              text: "Sign In",
              type: ButtonType.primary,
              onPressed: () => CustomRouter.nextScreen(context, "/login"),
            ),
            const SizedBox(
              height: 15.0,
            ),
            AppButton(
              text: "Create Account",
              type: ButtonType.plain,
              onPressed: () {
                CustomRouter.nextScreen(context, "/chooseAccount");
              },
            ),
          ],
        ),
      ),
    );
  }
}
