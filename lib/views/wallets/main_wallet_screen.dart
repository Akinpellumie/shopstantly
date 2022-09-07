import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopstantly_app/enums/transaction_type.dart';
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
  // bool iDrive = true;
  // bool iRide = false;
  // bool iSend = false;
  TransactionType? transactionType = TransactionType.deposit;
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
                          Icons.downloading,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                          Container(
                            padding: const EdgeInsets.only(left: 10.0),
                            height: 50.0,
                            child: ListView.builder(
                              physics: const AlwaysScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: 4,
                              padding: EdgeInsets.zero,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: const EdgeInsets.only(right: 15.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 2.0,
                                          vertical: 5.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: kIconBgColor,
                                          borderRadius:
                                              BorderRadius.circular(3.0),
                                        ),
                                        child: Icon(
                                          index.isEven
                                              ? CupertinoIcons.arrow_down
                                              : CupertinoIcons.arrow_up,
                                          color: index.isEven
                                              ? Colors.red
                                              : Colors.green,
                                          size: size.height * 0.018,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 7.0,
                                      ),
                                      Text(
                                        '\$3,214',
                                        style: TextStyle(
                                          color: kBlueColor,
                                          fontFamily: kDefaultFont,
                                          fontSize: size.height * 0.0160,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            //height: 40.0,
                            width: size.width - 30,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5.0,
                              vertical: 4.0,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: kPlaceholderColor.withOpacity(0.5),
                                width: 0.5,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      transactionType = TransactionType.deposit;
                                    });
                                  },
                                  child: Container(
                                    width: size.width / 4 - 20,
                                    padding: const EdgeInsets.symmetric(
                                      //vertical: 5.0,
                                      horizontal: 8.0,
                                    ),
                                    height: 35.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: transactionType ==
                                              TransactionType.deposit
                                          ? kPrimaryColor
                                          : Colors.transparent,
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Deposits',
                                        style: TextStyle(
                                          color: transactionType ==
                                                  TransactionType.deposit
                                              ? kWhiteColor
                                              : kPrimaryColor,
                                          fontSize: size.height * 0.0150,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Visibility(
                                  visible: transactionType ==
                                          TransactionType.expense ||
                                      transactionType ==
                                          TransactionType.withdrawal,
                                  child: Container(
                                    width: 0.5,
                                    height: 25.0,
                                    decoration: const BoxDecoration(
                                      color: kPlaceholderColor,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      transactionType = TransactionType.escrow;
                                    });
                                  },
                                  child: Container(
                                    width: size.width / 4 - 20,
                                    padding: const EdgeInsets.symmetric(
                                      //vertical: 5.0,
                                      horizontal: 8.0,
                                    ),
                                    height: 35.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: transactionType ==
                                              TransactionType.escrow
                                          ? kPrimaryColor
                                          : Colors.transparent,
                                    ),
                                    child: Center(
                                      child: Text(
                                        'In Escrow',
                                        style: TextStyle(
                                          color: transactionType ==
                                                  TransactionType.escrow
                                              ? kWhiteColor
                                              : kPrimaryColor,
                                          fontSize: size.height * 0.0150,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Visibility(
                                  visible: transactionType ==
                                          TransactionType.deposit ||
                                      transactionType ==
                                          TransactionType.withdrawal,
                                  child: Container(
                                    width: 0.5,
                                    height: 25.0,
                                    decoration: const BoxDecoration(
                                      color: kPlaceholderColor,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      transactionType = TransactionType.expense;
                                    });
                                  },
                                  child: Container(
                                    width: size.width / 4 - 20,
                                    padding: const EdgeInsets.symmetric(
                                      //vertical: 5.0,
                                      horizontal: 8.0,
                                    ),
                                    height: 35.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: transactionType ==
                                              TransactionType.expense
                                          ? kPrimaryColor
                                          : Colors.transparent,
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Expenses',
                                        style: TextStyle(
                                          color: transactionType ==
                                                  TransactionType.expense
                                              ? kWhiteColor
                                              : kPrimaryColor,
                                          fontSize: size.height * 0.0150,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Visibility(
                                  visible: transactionType ==
                                          TransactionType.deposit ||
                                      transactionType == TransactionType.escrow,
                                  child: Container(
                                    width: 0.5,
                                    height: 25.0,
                                    decoration: const BoxDecoration(
                                      color: kPlaceholderColor,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      transactionType =
                                          TransactionType.withdrawal;
                                    });
                                  },
                                  child: Container(
                                    width: size.width / 4 - 20,
                                    padding: const EdgeInsets.symmetric(
                                      //vertical: 5.0,
                                      horizontal: 8.0,
                                    ),
                                    height: 35.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: transactionType ==
                                              TransactionType.withdrawal
                                          ? kPrimaryColor
                                          : Colors.transparent,
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Withdrawal',
                                        style: TextStyle(
                                          color: transactionType ==
                                                  TransactionType.withdrawal
                                              ? kWhiteColor
                                              : kPrimaryColor,
                                          fontSize: size.height * 0.0150,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                children: [
                                  Container(
                                    height: 50.0,
                                    width: 50.0,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2.0,
                                      vertical: 5.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: kIconBgColor,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Icon(
                                      index.isEven
                                          ? CupertinoIcons.arrow_down
                                          : CupertinoIcons.arrow_up,
                                      color: index.isEven
                                          ? Colors.red
                                          : Colors.green,
                                      size: size.height * 0.025,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          index.isEven
                                              ? 'Uber Ride'
                                              : 'Received Money',
                                          style: TextStyle(
                                            color: kPrimaryColor,
                                            fontFamily: kDefaultFont,
                                            fontSize: size.height * 0.0180,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          '27-Apr  |  08:25pm',
                                          style: TextStyle(
                                            color: kPlaceholderColor,
                                            fontFamily: kDefaultFont,
                                            fontSize: size.height * 0.0170,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    index.isEven ? '-\$3,214.00' : '\$514.00',
                                    style: TextStyle(
                                      color: kPrimaryColor,
                                      fontFamily: kDefaultFont,
                                      fontSize: size.height * 0.0180,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return Container(
                                height: 3.0,
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                width: size.width,
                                color: Colors.transparent,
                              );
                            },
                            itemCount: 6,
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
