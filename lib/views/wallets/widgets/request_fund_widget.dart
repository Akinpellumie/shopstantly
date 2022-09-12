import 'package:flutter/material.dart';

import '../../../utils/app_button.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/dimensions.dart';


class RequestFundWidget extends StatelessWidget {
  const RequestFundWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 10.0, bottom: 10.0),
            height: 10.0,
            width: size.width,
            color: kIconBgColor,
          ),
          Form(
            //key: _loginViewModel.formKey,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0),
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
                        focusedBorder:
                            const UnderlineInputBorder(
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
                        focusedBorder:
                            const UnderlineInputBorder(
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
                        focusedBorder:
                            const UnderlineInputBorder(
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
          //const Spacer(),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 20.0,
              bottom: 30.0,
            ),
            child: AppButton(
              text: "Request Fund",
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
