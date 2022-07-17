import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopstantly_app/utils/dimensions.dart';

import '../../utils/app_button.dart';
import '../../utils/app_colors.dart';
import '../../utils/base_app_bar.dart';
import '../../utils/custom_router.dart';

class ChooseLocationScreen extends StatefulWidget {
  const ChooseLocationScreen({Key? key}) : super(key: key);

  @override
  State<ChooseLocationScreen> createState() => _ChooseLocationScreenState();
}

class _ChooseLocationScreenState extends State<ChooseLocationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Add Location',
        appBar: AppBar(),
        showLogo: false,
      ),
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/rafiki.svg",
                fit: BoxFit.contain,
                height: size.height * 0.35,
              ),
              Text(
                "Hello",
                style: TextStyle(
                  color: kPrimaryTextColor,
                  fontWeight: FontWeight.w500,
                  fontSize: size.height * 0.025,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                "Before we show you around, please select your country.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kSubTextColor,
                  fontSize: size.height * 0.025,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                height: size.height * 0.090,
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: kEntryBorderColor, width: 2.0)),
                child: Row(
                  children: const <Widget>[
                    Expanded(
                      child: Text(
                        'Select country',
                        style: TextStyle(
                            color: kDarkColor,
                            fontFamily: kDefaultFont,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Icon(
                      CupertinoIcons.chevron_down,
                      size: 25.0,
                      color: kDarkColor,
                    ),
                  ],
                ),
              ),
              AppButton(
                text: "Enter",
                type: ButtonType.primary,
                onPressed: () =>
                    CustomRouter.nextScreen(context, "/profileComplete"),
              ),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
