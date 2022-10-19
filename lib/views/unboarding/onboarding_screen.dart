import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopstantly_app/utils/app_button.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/custom_router.dart';
import 'package:shopstantly_app/utils/dimensions.dart';

import '../../models/content_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () => CustomRouter.nextScreen(context, '/mainPage'),
            child: Container(
              margin:
                  const EdgeInsets.only(top: 20.0, bottom: 10.0, right: 20.0),
              height: size.height * 0.1,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: kPrimaryTextColor,
                    fontFamily: kDefaultFont,
                    fontSize: size.height * 0.0200,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            height: size.height * 0.6,
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        contents[i].image,
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        contents[i].title,
                        style: TextStyle(
                            fontSize: size.height * 0.0250,
                            fontWeight: FontWeight.w500,
                            color: kPrimaryTextColor),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        contents[i].description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: size.height * 0.0180,
                          color: kSubTextColor,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            padding: const EdgeInsets.only(bottom: kBottomSpacing),
            width: size.width,
            height: size.height * 0.3 - 40.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      contents.length,
                      (index) => buildDot(index, context),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  width: size.width,
                  child: AppButton(
                    type: ButtonType.primary,
                    text: currentIndex == contents.length - 1
                        ? "Continue"
                        : "Next",
                    onPressed: () {
                      if (currentIndex == contents.length - 1) {
                        CustomRouter.nextScreen(context, '/landing');
                      }
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.bounceIn,
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 20.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                            color: kPrimaryTextColor,
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.0190,
                            fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      GestureDetector(
                        onTap: () => CustomRouter.nextScreen(context, "/login"),
                        child: SizedBox(
                          height: 20.0,
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: kDefaultFont,
                                fontSize: size.height * 0.0190,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 7,
      width: 7,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentIndex == index
            ? Theme.of(context).primaryColor
            : kPrimaryAccentColor,
      ),
    );
  }
}
