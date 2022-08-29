import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/app_colors.dart';

import '../../utils/base_app_bar.dart';
import '../../utils/dimensions.dart';

class MainWalletScreen extends StatefulWidget {
  const MainWalletScreen({Key? key}) : super(key: key);

  @override
  State<MainWalletScreen> createState() => _MainWalletScreenState();
}

class _MainWalletScreenState extends State<MainWalletScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Transaction',
        appBar: AppBar(),
        showLogo: false,
      ),
      body: Column(
        children: [
          Container(
            height: size.height * 0.20,
            width: size.width,
            margin: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Available Bal.',
                            style: TextStyle(
                              fontFamily: kDefaultFont,
                              fontSize: size.height * 0.0140,
                              color: kWhiteColor.withOpacity(0.70),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'N 3,500',
                            style: TextStyle(
                              fontFamily: kDefaultFont,
                              fontSize: size.height * 0.0250,
                              color: kWhiteColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'In Escrow',
                          style: TextStyle(
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.0140,
                            color: kWhiteColor.withOpacity(0.70),
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          'N 1,500',
                          style: TextStyle(
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.0250,
                            color: kWhiteColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '5172 4567 8888 0000',
                    style: TextStyle(
                      fontFamily: kDefaultFont,
                      fontSize: size.height * 0.0200,
                      letterSpacing: 1.5,
                      color: kWhiteColor.withOpacity(0.70),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Card Holder',
                            style: TextStyle(
                              fontFamily: kDefaultFont,
                              fontSize: size.height * 0.0130,
                              color: kWhiteColor.withOpacity(0.70),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'Dotun Felixx',
                            style: TextStyle(
                              fontFamily: kDefaultFont,
                              fontSize: size.height * 0.0180,
                              color: kWhiteColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Personal Account',
                        style: TextStyle(
                          fontFamily: kDefaultFont,
                          fontSize: size.height * 0.0130,
                          color: kWhiteColor.withOpacity(0.70),
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}
