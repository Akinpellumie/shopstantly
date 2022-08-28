import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopstantly_app/models/general/keyboard_model.dart';
import 'package:shopstantly_app/utils/app_button.dart';

import '../../models/general/keyboard_key.dart';
import '../../utils/app_colors.dart';
import '../../utils/assets_path.dart';
import '../../utils/base_app_bar.dart';
import '../../utils/custom_router.dart';
import '../../utils/dimensions.dart';
import '../../utils/keyboard_pad.dart';

class WalletPinScreen extends StatefulWidget {
  const WalletPinScreen({Key? key}) : super(key: key);

  @override
  State<WalletPinScreen> createState() => _WalletPinScreenState();
}

class _WalletPinScreenState extends State<WalletPinScreen> {
  late List<List<KeyboardModel>> keys;
  late String walletPin;
  final int pinLength = 4;

  @override
  void initState() {
    super.initState();
    keys = keyboardKeys;
    walletPin = '';
  }

  onKeyTap(KeyboardModel val) {
    if (walletPin.length == pinLength) {
      return;
    } else {
      setState(
        () {
          walletPin = walletPin + val.value;
        },
      );
    }
  }

  onBackspacePress() {
    if (walletPin.isEmpty) {
      return;
    } else {
      setState(() {
        walletPin = walletPin.substring(0, walletPin.length - 1);
      });
    }
  }

  renderKeyboard() {
    return keys
        .map(
          (x) => Row(
            children: x.map(
              (y) {
                return Expanded(
                  child: KeyboardKey(
                    label: y.widget,
                    value: y.value,
                    model: y,
                    onTap: (val) {
                      if (val.value == 'del') {
                        onBackspacePress();
                      } else if (val.value == 'bio') {
                        //handle biometric unlock

                      } else {
                        onKeyTap(val);
                      }
                    },
                  ),
                );
              },
            ).toList(),
          ),
        )
        .toList();
  }

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "Unlock your wallet with your secret pin known to you.",
              style: TextStyle(
                color: kPrimaryColor,
                fontFamily: kDefaultFont,
                fontWeight: FontWeight.normal,
                fontSize: size.height * 0.0190,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              "Enter Pin Code (4-digit)",
              style: TextStyle(
                color: kPlaceholderColor,
                fontFamily: kDefaultFont,
                fontWeight: FontWeight.w300,
                fontSize: size.height * 0.0170,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                    color: walletPin.length >= 1
                        ? kPrimaryColor
                        : Colors.transparent,
                    border: Border.all(
                      color: walletPin.length >= 1
                          ? Colors.transparent
                          : kPlaceholderColor,
                      width: 2.0,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 10.0),
                Container(
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                    color: walletPin.length >= 2
                        ? kPrimaryColor
                        : Colors.transparent,
                    border: Border.all(
                      color: walletPin.length >= 2
                          ? Colors.transparent
                          : kPlaceholderColor,
                      width: 2.0,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 10.0),
                Container(
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                    color: walletPin.length >= 3
                        ? kPrimaryColor
                        : Colors.transparent,
                    border: Border.all(
                      color: walletPin.length >= 3
                          ? Colors.transparent
                          : kPlaceholderColor,
                      width: 2.0,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 10.0),
                Container(
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                    color: walletPin.length == 4
                        ? kPrimaryColor
                        : Colors.transparent,
                    border: Border.all(
                      color: walletPin.length == 4
                          ? Colors.transparent
                          : kPlaceholderColor,
                      width: 2.0,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.10,
            ),
            ...renderKeyboard(),
            SizedBox(
              height: size.height * 0.10,
            ),
            //renderConfirmButton(),
            AppButton(
              text: "Proceed",
              type: walletPin.isNotEmpty
                  ? ButtonType.primary
                  : ButtonType.disabled,
              onPressed: walletPin.isNotEmpty
                  ? () {
                      CustomRouter.nextScreen(context, "/personalWallet");
                    }
                  : () {},
            ),
          ],
        ),
      ),
    );
  }
}
