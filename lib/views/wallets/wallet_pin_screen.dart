import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopstantly_app/models/general/keyboard_model.dart';

import '../../models/general/keyboard_key.dart';
import '../../utils/app_colors.dart';
import '../../utils/assets_path.dart';
import '../../utils/base_app_bar.dart';
import '../../utils/dimensions.dart';

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
    keys = [
      [
        KeyboardModel(
          value: '1',
          type: 'number',
          widget: Container(
            //height: 20.0,
            //width: 20.0,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: kPrimaryColor,
                width: 2.0,
              ),
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Text(
                '1',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontFamily: kDefaultFont,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
        KeyboardModel(
          value: '2',
          type: 'number',
          widget: Container(
            //height: 20.0,
            //width: 20.0,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: kPrimaryColor,
                width: 2.0,
              ),
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Text(
                '2',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontFamily: kDefaultFont,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
        KeyboardModel(
          value: '3',
          type: 'number',
          widget: Container(
            //height: 20.0,
            //width: 20.0,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: kPrimaryColor,
                width: 2.0,
              ),
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Text(
                '3',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontFamily: kDefaultFont,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
      ],
      [
        KeyboardModel(
          value: '4',
          type: 'number',
          widget: Container(
            //height: 20.0,
            //width: 20.0,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: kPrimaryColor,
                width: 2.0,
              ),
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Text(
                '4',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontFamily: kDefaultFont,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
        KeyboardModel(
          value: '5',
          type: 'number',
          widget: Container(
            //height: 20.0,
            //width: 20.0,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: kPrimaryColor,
                width: 2.0,
              ),
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Text(
                '5',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontFamily: kDefaultFont,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
        KeyboardModel(
          value: '6',
          type: 'number',
          widget: Container(
            //height: 20.0,
            //width: 20.0,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: kPrimaryColor,
                width: 2.0,
              ),
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Text(
                '6',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontFamily: kDefaultFont,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
      ],
      [
        KeyboardModel(
          value: '7',
          type: 'number',
          widget: Container(
            //height: 20.0,
            //width: 20.0,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: kPrimaryColor,
                width: 2.0,
              ),
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Text(
                '7',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontFamily: kDefaultFont,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
        KeyboardModel(
          value: '8',
          type: 'number',
          widget: Container(
            //height: 20.0,
            //width: 20.0,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: kPrimaryColor,
                width: 2.0,
              ),
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Text(
                '8',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontFamily: kDefaultFont,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
        KeyboardModel(
          value: '9',
          type: 'number',
          widget: Container(
            //height: 20.0,
            //width: 20.0,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: kPrimaryColor,
                width: 2.0,
              ),
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Text(
                '9',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontFamily: kDefaultFont,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
      ],
      [
        KeyboardModel(
          value: 'bio',
          type: 'icon',
          widget: Container(
            //height: 20.0,
            //width: 20.0,
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              // border: Border.all(
              //   color: kPrimaryColor,
              //   width: 2.0,
              // ),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: SvgPicture.asset(
                AssetsPath.faceID,
                color: kWhiteColor,
              ),
            ),
          ),
        ),
        KeyboardModel(
          value: '0',
          type: 'number',
          widget: Container(
            //height: 20.0,
            //width: 20.0,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: kPrimaryColor,
                width: 2.0,
              ),
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Text(
                '0',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontFamily: kDefaultFont,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
        KeyboardModel(
          value: 'del',
          type: 'icon',
          widget: Container(
            //height: 20.0,
            //width: 20.0,
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              // border: Border.all(
              //   color: kPrimaryColor,
              //   width: 2.0,
              // ),
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Icon(
                Icons.backspace,
                color: kWhiteColor,
              ),
            ),
          ),
        ),
      ],
    ];
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
                    label: y.value,
                    value: y.value,
                    onTap: (val) {
                      if (val.type == 'del') {
                        onBackspacePress();
                      } else if (val.type == 'bio') {
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

  renderAmount() {
    String display = 'Enter Phone Number';
    TextStyle style = const TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    );

    if (walletPin.isNotEmpty) {
      // NumberFormat f = NumberFormat('#,###');
      display = walletPin;
      // display = f.format(int.parse(amount));
      style = style.copyWith(
        color: Colors.black,
      );
    }

    return Expanded(
      child: Center(
        child: Text(
          display,
          style: style,
        ),
      ),
    );
  }

  renderConfirmButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      child: GestureDetector(
        onTap: walletPin.isNotEmpty ? () {} : null,
        child: Container(
          height: 50.0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: walletPin.isNotEmpty ? Colors.blue : Colors.grey,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: Text(
              'Submit',
              style: TextStyle(
                color: walletPin.isNotEmpty ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
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
                    color: walletPin.length == 1
                        ? kPrimaryColor
                        : Colors.transparent,
                    border: Border.all(
                      color: walletPin.length == 1
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
                    color: walletPin.length == 2
                        ? kPrimaryColor
                        : Colors.transparent,
                    border: Border.all(
                      color: walletPin.length == 2
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
                    color: walletPin.length == 3
                        ? kPrimaryColor
                        : Colors.transparent,
                    border: Border.all(
                      color: walletPin.length == 3
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
            const SizedBox(
              height: 20.0,
            ),
            renderAmount(),
            ...renderKeyboard(),
            const SizedBox(
              height: 10,
            ),
            renderConfirmButton(),
          ],
        ),
      ),
    );
  }
}
