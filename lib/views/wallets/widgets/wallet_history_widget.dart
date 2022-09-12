import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../enums/transaction_type.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/dimensions.dart';

class WalletHistoryWidget extends StatefulWidget {
  final Size size;
  const WalletHistoryWidget({Key? key, required this.size}) : super(key: key);

  @override
  State<WalletHistoryWidget> createState() => _WalletHistoryWidgetState();
}

class _WalletHistoryWidgetState extends State<WalletHistoryWidget> {
  TransactionType? transactionType = TransactionType.deposit;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Text(
            'Summary',
            style: TextStyle(
              fontFamily: kDefaultFont,
              fontSize: widget.size.height * 0.018,
              color: kPrimaryColor,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(
            height: 10.0,
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
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                        child: Icon(
                          index.isEven
                              ? CupertinoIcons.arrow_down
                              : CupertinoIcons.arrow_up,
                          color: index.isEven ? Colors.red : Colors.green,
                          size: widget.size.height * 0.018,
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
                          fontSize: widget.size.height * 0.0160,
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
            width: widget.size.width - 30,
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
                    width: widget.size.width / 4 - 20,
                    padding: const EdgeInsets.symmetric(
                      //vertical: 5.0,
                      horizontal: 8.0,
                    ),
                    height: 35.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: transactionType == TransactionType.deposit
                          ? kPrimaryColor
                          : Colors.transparent,
                    ),
                    child: Center(
                      child: Text(
                        'Deposits',
                        style: TextStyle(
                          color: transactionType == TransactionType.deposit
                              ? kWhiteColor
                              : kPrimaryColor,
                          fontSize: widget.size.height * 0.0130,
                        ),
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: transactionType == TransactionType.expense ||
                      transactionType == TransactionType.withdrawal,
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
                    width: widget.size.width / 4 - 20,
                    padding: const EdgeInsets.symmetric(
                      //vertical: 5.0,
                      horizontal: 8.0,
                    ),
                    height: 35.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: transactionType == TransactionType.escrow
                          ? kPrimaryColor
                          : Colors.transparent,
                    ),
                    child: Center(
                      child: Text(
                        'In Escrow',
                        style: TextStyle(
                          color: transactionType == TransactionType.escrow
                              ? kWhiteColor
                              : kPrimaryColor,
                          fontSize: widget.size.height * 0.0130,
                        ),
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: transactionType == TransactionType.deposit ||
                      transactionType == TransactionType.withdrawal,
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
                    width: widget.size.width / 4 - 20,
                    padding: const EdgeInsets.symmetric(
                      //vertical: 5.0,
                      horizontal: 8.0,
                    ),
                    height: 35.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: transactionType == TransactionType.expense
                          ? kPrimaryColor
                          : Colors.transparent,
                    ),
                    child: Center(
                      child: Text(
                        'Expenses',
                        style: TextStyle(
                          color: transactionType == TransactionType.expense
                              ? kWhiteColor
                              : kPrimaryColor,
                          fontSize: widget.size.height * 0.0130,
                        ),
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: transactionType == TransactionType.deposit ||
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
                      transactionType = TransactionType.withdrawal;
                    });
                  },
                  child: Container(
                    width: widget.size.width / 4 - 20,
                    padding: const EdgeInsets.symmetric(
                      //vertical: 5.0,
                      horizontal: 8.0,
                    ),
                    height: 35.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: transactionType == TransactionType.withdrawal
                          ? kPrimaryColor
                          : Colors.transparent,
                    ),
                    child: Center(
                      child: Text(
                        'Withdraws',
                        style: TextStyle(
                          color: transactionType == TransactionType.withdrawal
                              ? kWhiteColor
                              : kPrimaryColor,
                          fontSize: widget.size.height * 0.0130,
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
                      color: index.isEven ? Colors.red : Colors.green,
                      size: widget.size.height * 0.025,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          index.isEven ? 'Uber Ride' : 'Received Money',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontFamily: kDefaultFont,
                            fontSize: widget.size.height * 0.0180,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '27-Apr  |  08:25pm',
                          style: TextStyle(
                            color: kPlaceholderColor,
                            fontFamily: kDefaultFont,
                            fontSize: widget.size.height * 0.0170,
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
                      fontSize: widget.size.height * 0.0180,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Container(
                height: 3.0,
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                width: widget.size.width,
                color: Colors.transparent,
              );
            },
            itemCount: 6,
          ),
        ],
      ),
    );
  }
}
