import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/assets_path.dart';

import '../../../utils/app_button.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/custom_router.dart';
import '../../../utils/dimensions.dart';

class FundWalletWidget extends StatefulWidget {
  const FundWalletWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<FundWalletWidget> createState() => _FundWalletWidgetState();
}

class _FundWalletWidgetState extends State<FundWalletWidget> {
  bool isMasterCard = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            height: 10.0,
            width: widget.size.width,
            color: kIconBgColor,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        fontSize: widget.size.height * 0.0160,
                        fontWeight: FontWeight.normal,
                      ),
                      labelStyle: TextStyle(
                        color: kPrimaryColor,
                        fontFamily: kDefaultFont,
                        fontSize: widget.size.height * 0.0160,
                        fontWeight: FontWeight.normal,
                      ),
                      labelText: 'Amount',
                      suffixIcon: Text(
                        'NGN',
                        style: TextStyle(
                          fontFamily: kDefaultFont,
                          fontSize: widget.size.height * 0.018,
                          color: kPlaceholderColor,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      suffixIconConstraints:
                          BoxConstraints.loose(const Size(90.0, 20.0)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Choose Card".toUpperCase(),
                        style: TextStyle(
                          color: kDarkColor,
                          fontFamily: kDefaultFont,
                          fontWeight: FontWeight.w400,
                          fontSize: widget.size.height * 0.016,
                          letterSpacing: 2.5,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () =>
                          CustomRouter.nextScreen(context, '/addNewCard'),
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Text(
                          "+ Add a new card",
                          style: TextStyle(
                            color: kBlueColor,
                            fontFamily: kDefaultFont,
                            fontWeight: FontWeight.w400,
                            fontSize: widget.size.height * 0.016,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: widget.size.width,
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 3.0, horizontal: 3.0),
                              decoration: BoxDecoration(
                                color: kIconBgColor,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Image.asset(
                                AssetsPath.mastercard,
                                height: widget.size.height * 0.030,
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            Text(
                              "Mastercard - 4383",
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: kDefaultFont,
                                fontWeight: FontWeight.normal,
                                fontSize: widget.size.height * 0.018,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: isMasterCard,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              isMasterCard = true;
                            });
                          },
                          icon: Icon(
                            Icons.check_circle,
                            color: kPrimaryColor,
                            size: widget.size.height * 0.025,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: widget.size.width,
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 3.0, horizontal: 3.0),
                              decoration: BoxDecoration(
                                color: kIconBgColor,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Image.asset(
                                AssetsPath.visa,
                                height: widget.size.height * 0.030,
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            Text(
                              "Visa - 7619",
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: kDefaultFont,
                                fontWeight: FontWeight.normal,
                                fontSize: widget.size.height * 0.018,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: !isMasterCard,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              isMasterCard = false;
                            });
                          },
                          icon: Icon(
                            Icons.check_circle,
                            color: kPrimaryColor,
                            size: widget.size.height * 0.025,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "your wallet".toUpperCase(),
                        style: TextStyle(
                          color: kDarkColor,
                          fontFamily: kDefaultFont,
                          fontWeight: FontWeight.w400,
                          fontSize: widget.size.height * 0.016,
                          letterSpacing: 2.5,
                        ),
                      ),
                    ),
                    Text(
                      "+ Add a new wallet",
                      style: TextStyle(
                        color: kBlueColor,
                        fontFamily: kDefaultFont,
                        fontWeight: FontWeight.w400,
                        fontSize: widget.size.height * 0.016,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                AppButton(
                  text: "Fund Wallet",
                  type: ButtonType.primary,
                  onPressed: () {
                    //CustomRouter.nextScreen(context, "/mainPage");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
