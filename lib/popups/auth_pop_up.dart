import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopstantly_app/utils/assets_path.dart';

import '../utils/app_button.dart';
import '../utils/app_colors.dart';
import '../utils/custom_router.dart';
import '../utils/dimensions.dart';

class AuthPopUp {
  static void authPopupModal(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: size.height * 0.50,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const SizedBox(
                    height: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: size.width,
                          height: size.height * 0.20,
                          child: SvgPicture.asset(
                            AssetsPath.authSvg,
                            alignment: Alignment.center,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "To continue",
                          style: TextStyle(
                            color: kPrimaryTextColor,
                            fontFamily: kDefaultFont,
                            fontWeight: FontWeight.w500,
                            fontSize: size.height * 0.019,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  AppButton(
                    text: "Create New Account",
                    type: ButtonType.primary,
                    //loading: _registerViewModel.creatingAccount,
                    onPressed: () {
                      CustomRouter.nextScreen(context, '/register');
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Already have an account?",
                          style: TextStyle(
                            color: kDarkColor,
                            fontFamily: kDefaultFont,
                            fontWeight: FontWeight.w300,
                            fontSize: size.height * 0.0190,
                          ),
                        ),
                        TextSpan(
                          text: " Sign In",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: size.height * 0.0190,
                            fontFamily: kDefaultFont,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () =>
                                CustomRouter.nextScreen(context, '/login'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
