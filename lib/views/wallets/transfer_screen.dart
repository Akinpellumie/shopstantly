import 'package:flutter/material.dart';

import '../../utils/app_button.dart';
import '../../utils/app_colors.dart';
import '../../utils/base_app_bar.dart';
import '../../utils/dimensions.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({Key? key}) : super(key: key);

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Transfer',
        appBar: AppBar(),
        showLogo: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'Transfer to a Shopstantly User',
              style: TextStyle(
                fontFamily: kDefaultFont,
                fontSize: size.height * 0.017,
                color: kPrimaryColor,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Expanded(
            child: Form(
              //key: _loginViewModel.formKey,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      child: TextField(
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: kPlaceholderColor,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: kPrimaryColor,
                            ),
                          ),
                          hintText: '0.00',
                          //hintText: 'Destination',
                          hintStyle: TextStyle(
                            color: kPlaceholderColor,
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.0160,
                            fontWeight: FontWeight.normal,
                          ),
                          labelText: 'Amount',
                          labelStyle: TextStyle(
                            color: kPrimaryColor,
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.0160,
                            fontWeight: FontWeight.normal,
                          ),
                          // suffixIcon: Text(
                          //   'NGN',
                          //   style: TextStyle(
                          //     fontFamily: kDefaultFont,
                          //     fontSize: size.height * 0.018,
                          //     color: kPlaceholderColor,
                          //     fontWeight: FontWeight.normal,
                          //   ),
                          // ),
                          // suffixIconConstraints:
                          //     BoxConstraints.loose(const Size(90.0, 20.0)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      child: TextField(
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: kPlaceholderColor,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: kPrimaryColor,
                            ),
                          ),
                          hintText: 'XXXXXX-XXXX',
                          //hintText: 'Destination',
                          hintStyle: TextStyle(
                            color: kPlaceholderColor,
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.0160,
                            fontWeight: FontWeight.normal,
                          ),
                          labelText: 'Number',
                          labelStyle: TextStyle(
                            color: kPrimaryColor,
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.0160,
                            fontWeight: FontWeight.normal,
                          ),
                          // suffixIcon: Text(
                          //   'NGN',
                          //   style: TextStyle(
                          //     fontFamily: kDefaultFont,
                          //     fontSize: size.height * 0.018,
                          //     color: kPlaceholderColor,
                          //     fontWeight: FontWeight.normal,
                          //   ),
                          // ),
                          // suffixIconConstraints:
                          //     BoxConstraints.loose(const Size(90.0, 20.0)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      child: TextField(
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: kPlaceholderColor,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: kPrimaryColor,
                            ),
                          ),
                          hintText: 'Enter Description',
                          //hintText: 'Destination',
                          hintStyle: TextStyle(
                            color: kPlaceholderColor,
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.0160,
                            fontWeight: FontWeight.normal,
                          ),
                          labelText: 'Description',
                          labelStyle: TextStyle(
                            color: kPrimaryColor,
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.0160,
                            fontWeight: FontWeight.normal,
                          ),
                          // suffixIcon: Text(
                          //   'NGN',
                          //   style: TextStyle(
                          //     fontFamily: kDefaultFont,
                          //     fontSize: size.height * 0.018,
                          //     color: kPlaceholderColor,
                          //     fontWeight: FontWeight.normal,
                          //   ),
                          // ),
                          // suffixIconConstraints:
                          //     BoxConstraints.loose(const Size(90.0, 20.0)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          //const Spacer(),
          Container(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 20.0,
              bottom: 30.0,
            ),
            child: AppButton(
              text: "Transfer",
              type: ButtonType.primary,
              onPressed: () {
                //CustomRouter.nextScreen(context, "/mainPage");
              },
            ),
          ),
        ],
      ),
    );
  }
}
