import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopstantly_app/utils/app_colors.dart';

import '../../utils/assets_path.dart';
import '../../utils/base_app_bar.dart';
import '../../utils/dimensions.dart';

class MainWalletScreen extends StatefulWidget {
  const MainWalletScreen({Key? key}) : super(key: key);

  @override
  State<MainWalletScreen> createState() => _MainWalletScreenState();
}

class _MainWalletScreenState extends State<MainWalletScreen> {
  int selectedIndex = 0;
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
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedIndex == 0
                              ? kIconBgColor
                              : Colors.transparent,
                        ),
                        child: Icon(
                          CupertinoIcons.qrcode,
                          color: selectedIndex == 0
                              ? kPrimaryColor
                              : kPlaceholderColor,
                          size: size.height * 0.0300,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'PayNow',
                        style: TextStyle(
                          fontFamily: kDefaultFont,
                          fontSize: selectedIndex == 0
                              ? size.height * 0.013
                              : size.height * 0.010,
                          color: selectedIndex == 0
                              ? kPrimaryColor
                              : kPlaceholderColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedIndex == 1
                              ? kIconBgColor
                              : Colors.transparent,
                        ),
                        child: Icon(
                          Icons.history,
                          color: selectedIndex == 1
                              ? kPrimaryColor
                              : kPlaceholderColor,
                          size: size.height * 0.0300,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'History',
                        style: TextStyle(
                          fontFamily: kDefaultFont,
                          fontSize: selectedIndex == 1
                              ? size.height * 0.013
                              : size.height * 0.010,
                          color: selectedIndex == 1
                              ? kPrimaryColor
                              : kPlaceholderColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedIndex == 2
                              ? kIconBgColor
                              : Colors.transparent,
                        ),
                        child: Icon(
                          Icons.wallet,
                          color: selectedIndex == 2
                              ? kPrimaryColor
                              : kPlaceholderColor,
                          size: size.height * 0.0300,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Fund Wallet',
                        style: TextStyle(
                          fontFamily: kDefaultFont,
                          fontSize: selectedIndex == 2
                              ? size.height * 0.013
                              : size.height * 0.010,
                          color: selectedIndex == 2
                              ? kPrimaryColor
                              : kPlaceholderColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 3;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedIndex == 3
                              ? kIconBgColor
                              : Colors.transparent,
                        ),
                        child: Icon(
                          CupertinoIcons.paperplane,
                          color: selectedIndex == 3
                              ? kPrimaryColor
                              : kPlaceholderColor,
                          size: size.height * 0.0300,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Transfer',
                        style: TextStyle(
                          fontFamily: kDefaultFont,
                          fontSize: selectedIndex == 3
                              ? size.height * 0.013
                              : size.height * 0.010,
                          color: selectedIndex == 3
                              ? kPrimaryColor
                              : kPlaceholderColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 4;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedIndex == 4
                              ? kIconBgColor
                              : Colors.transparent,
                        ),
                        child: Icon(
                          CupertinoIcons.money_dollar_circle,
                          color: selectedIndex == 4
                              ? kPrimaryColor
                              : kPlaceholderColor,
                          size: size.height * 0.0300,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Request',
                        style: TextStyle(
                          fontFamily: kDefaultFont,
                          fontSize: selectedIndex == 4
                              ? size.height * 0.013
                              : size.height * 0.010,
                          color: selectedIndex == 4
                              ? kPrimaryColor
                              : kPlaceholderColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 5;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedIndex == 5
                              ? kIconBgColor
                              : Colors.transparent,
                        ),
                        child: Icon(
                          CupertinoIcons.money_dollar_circle,
                          color: selectedIndex == 5
                              ? kPrimaryColor
                              : kPlaceholderColor,
                          size: size.height * 0.0300,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Withdraw',
                        style: TextStyle(
                          fontFamily: kDefaultFont,
                          fontSize: selectedIndex == 5
                              ? size.height * 0.013
                              : size.height * 0.010,
                          color: selectedIndex == 5
                              ? kPrimaryColor
                              : kPlaceholderColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Summary',
                            style: TextStyle(
                              fontFamily: kDefaultFont,
                              fontSize: size.height * 0.018,
                              color: kPrimaryColor,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                    childCount: 1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ScanQrCodeWidget extends StatelessWidget {
  const ScanQrCodeWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20.0,
        ),
        SvgPicture.asset(
          AssetsPath.qrcode,
          color: kPrimaryColor,
          height: 150,
          width: size.width * 0.50,
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          'Proceed to make payment and complete your transaction on shopstantly with scanning the bar code.',
          style: TextStyle(
            fontFamily: kDefaultFont,
            fontSize: size.height * 0.0200,
            color: kPrimaryColor,
            fontWeight: FontWeight.normal,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
