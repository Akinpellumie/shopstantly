import 'package:flutter/material.dart';

import '../../utils/app_button.dart';
import '../../utils/app_colors.dart';
import '../../utils/base_app_bar.dart';
import '../../utils/custom_router.dart';
import '../../utils/dimensions.dart';
import '../auth/register/components/otp_text_box.dart';

class SetWalletPinScreen extends StatefulWidget {
  const SetWalletPinScreen({Key? key}) : super(key: key);

  @override
  State<SetWalletPinScreen> createState() => _SetWalletPinScreenState();
}

class _SetWalletPinScreenState extends State<SetWalletPinScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Wallet',
        appBar: AppBar(),
        showLogo: false,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "For the safety of your Wallet, kindly input a 4 digit code pin",
                  style: TextStyle(
                    color: kDarkColor,
                    fontFamily: kDefaultFont,
                    fontWeight: FontWeight.w500,
                    fontSize: size.height * 0.019,
                  ),
                ),
                const SizedBox(height: 40.0),
                Text(
                  "Enter your preferred 4 digit",
                  style: TextStyle(
                    color: kPlaceholderColor,
                    fontFamily: kDefaultFont,
                    fontWeight: FontWeight.normal,
                    fontSize: size.height * 0.0170,
                  ),
                ),
                const SizedBox(
                  height: 40.0,
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
                  height: 40.0,
                ),
                AppButton(
                  text: "Set Password",
                  type: ButtonType.primary,
                  onPressed: () {
                    CustomRouter.nextScreen(context, "/walletPin");
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
