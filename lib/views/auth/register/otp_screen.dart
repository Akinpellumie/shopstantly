import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/app_button.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/base_app_bar.dart';
import 'package:shopstantly_app/utils/dimensions.dart';
import 'package:shopstantly_app/views/auth/register/components/otp_text_box.dart';

import '../../../utils/custom_router.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Verify Account',
        appBar: AppBar(),
        showLogo: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 40.0,
                ),
                Text(
                  "Verify Email",
                  style: TextStyle(
                    color: kDarkColor,
                    fontFamily: kDefaultFont,
                    fontWeight: FontWeight.w500,
                    fontSize: size.height * 0.019,
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  "Enter one time verification code sent to you Email",
                  style: TextStyle(
                    color: kPlaceholderColor,
                    fontFamily: kDefaultFont,
                    fontWeight: FontWeight.w400,
                    fontSize: kNormalText,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    height: 25.0,
                    child: const Text(
                      "Use Phone Number Instead",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontFamily: kDefaultFont,
                        fontWeight: FontWeight.w500,
                        fontSize: kNormalText,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    OtpTextBox(
                      first: true,
                      last: false,
                      widthSize: size.width * 0.25 - 15,
                    ),
                    OtpTextBox(
                      first: false,
                      last: false,
                      widthSize: size.width * 0.25 - 15,
                    ),
                    OtpTextBox(
                      first: false,
                      last: false,
                      widthSize: size.width * 0.25 - 15,
                    ),
                    OtpTextBox(
                      first: false,
                      last: true,
                      widthSize: size.width * 0.25 - 15,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Didn’t Receive Code? ",
                          style: TextStyle(
                            color: kDarkColor,
                            fontFamily: kDefaultFont,
                            fontWeight: FontWeight.w500,
                            fontSize: size.height * 0.019,
                          ),
                        ),
                        TextSpan(
                          text: "Send again",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontFamily: kDefaultFont,
                              fontSize: size.height * 0.019,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                AppButton(
                  text: "Confirm",
                  type: ButtonType.primary,
                  onPressed: () {
                    CustomRouter.nextScreen(context, "/addPhoto");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
