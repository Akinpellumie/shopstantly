import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/app_button.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/app_styling.dart';
import 'package:shopstantly_app/utils/base_app_bar.dart';
import 'package:shopstantly_app/utils/custom_router.dart';
import 'package:shopstantly_app/utils/dimensions.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Forgot Password',
        appBar: AppBar(),
        showLogo: false,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 50.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Select Recovery Method',
                  style: AppStyling.header3,
                ),
              ),
              const SizedBox(height: 40.0),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 25.0,
                  horizontal: 30.0,
                ),
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  border: Border.all(color: kPrimaryColor, width: 1.0),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: const [
                    BoxShadow(
                        color: kShadowColor,
                        offset: Offset(5, 7),
                        blurRadius: 5.0,
                        spreadRadius: 3.0),
                    BoxShadow(
                        color: kShadowColor,
                        offset: Offset(5, 4),
                        blurRadius: 5.0,
                        spreadRadius: 2.0)
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(25.0),
                      decoration: const BoxDecoration(
                        color: kIconBgColor,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.chat,
                        color: kPlaceholderColor,
                        size: 35.0,
                      ),
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          'via SMS:',
                          style: TextStyle(
                              color: kPlaceholderColor,
                              fontFamily: kDefaultFont,
                              fontWeight: FontWeight.normal,
                              fontSize: kNormalText),
                        ),
                        Text(
                          '+6282******39',
                          style: TextStyle(
                              color: kPlaceholderColor,
                              fontFamily: kDefaultFont,
                              fontWeight: FontWeight.bold,
                              fontSize: kNormalText),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 25.0,
                  horizontal: 30.0,
                ),
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  border: Border.all(color: kEntryBorderColor, width: 1.0),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: const [
                    BoxShadow(
                        color: kShadowColor,
                        offset: Offset(5, 7),
                        blurRadius: 5.0,
                        spreadRadius: 3.0),
                    BoxShadow(
                        color: kShadowColor,
                        offset: Offset(5, 4),
                        blurRadius: 5.0,
                        spreadRadius: 2.0)
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(25.0),
                      decoration: const BoxDecoration(
                        color: kIconBgColor,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.mail,
                        color: kPlaceholderColor,
                        size: 35.0,
                      ),
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          'via Email:',
                          style: TextStyle(
                              color: kPlaceholderColor,
                              fontFamily: kDefaultFont,
                              fontWeight: FontWeight.normal,
                              fontSize: kNormalText),
                        ),
                        Text(
                          'ex**@yourdo.com',
                          style: TextStyle(
                              color: kPlaceholderColor,
                              fontFamily: kDefaultFont,
                              fontWeight: FontWeight.bold,
                              fontSize: kNormalText),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              AppButton(
                text: "Request",
                type: ButtonType.primary,
                onPressed: () {
                  CustomRouter.nextScreen(context, "/createPassword");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
