import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../enums/account_type.dart';
import '../../utils/app_button.dart';
import '../../utils/app_colors.dart';
import '../../utils/assets_path.dart';
import '../../utils/custom_router.dart';

class ChooseAccountScreen extends StatefulWidget {
  const ChooseAccountScreen({Key? key}) : super(key: key);

  @override
  State<ChooseAccountScreen> createState() => _ChooseAccountScreenState();
}

class _ChooseAccountScreenState extends State<ChooseAccountScreen> {
  AccountType? _accountType = AccountType.shoppers;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          controller: ScrollController(
            keepScrollOffset: true,
          ),
          slivers: [
            SliverAppBar(
              leadingWidth: 0.0,
              elevation: 0.0,
              automaticallyImplyLeading: false,
              pinned: true,
              backgroundColor: kBackgroundColor,
              flexibleSpace: FlexibleSpaceBar(
                title: Container(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.arrow_back,
                      color: kPrimaryColor,
                      size: size.height * 0.0200,
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Choose from two basic accounts',
                        style: TextStyle(
                            fontSize: size.height * 0.0250,
                            fontWeight: FontWeight.w500,
                            color: kPrimaryColor),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Both accounts are fundamental to having a product and service page.  ',
                        style: TextStyle(
                          fontSize: size.height * 0.0160,
                          fontWeight: FontWeight.normal,
                          color: kPlaceholderColor,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _accountType = AccountType.shoppers;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                              color: kPlaceholderColor.withOpacity(0.45),
                              width: 0.5,
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _accountType =
                                                    AccountType.shoppers;
                                              });
                                            },
                                            child: _accountType ==
                                                    AccountType.shoppers
                                                ? Container(
                                                    height:
                                                        size.height * 0.0180,
                                                    width: size.height * 0.0180,
                                                    padding:
                                                        const EdgeInsets.all(
                                                            4.5),
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: kPrimaryColor,
                                                    ),
                                                    child: Container(
                                                      height:
                                                          size.height * 0.0140,
                                                      width:
                                                          size.height * 0.0140,
                                                      decoration:
                                                          const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: kWhiteColor,
                                                      ),
                                                    ),
                                                  )
                                                : Container(
                                                    height:
                                                        size.height * 0.0180,
                                                    width: size.height * 0.0180,
                                                    padding:
                                                        const EdgeInsets.all(
                                                            4.5),
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.transparent,
                                                      border: Border.all(
                                                        color:
                                                            kPlaceholderColor,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                  ),
                                          ),
                                          const SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "Shopper's Account",
                                            style: TextStyle(
                                              fontSize: size.height * 0.0160,
                                              fontWeight: FontWeight.w500,
                                              color: kPrimaryColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "FREE",
                                    style: TextStyle(
                                      fontSize: size.height * 0.0170,
                                      fontWeight: FontWeight.bold,
                                      color: kOrangeColor,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10.0),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          AssetsPath.starFillIcon,
                                          color: kOrangeColor,
                                          width: size.height * 0.0140,
                                          height: size.height * 0.0140,
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          "Buy Products and Add Wishlist",
                                          style: TextStyle(
                                            fontSize: size.height * 0.0140,
                                            fontWeight: FontWeight.w300,
                                            color:
                                                kPrimaryColor.withOpacity(0.65),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          AssetsPath.starFillIcon,
                                          color: kOrangeColor,
                                          width: size.height * 0.0140,
                                          height: size.height * 0.0140,
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          "Create Event",
                                          style: TextStyle(
                                            fontSize: size.height * 0.0140,
                                            fontWeight: FontWeight.w300,
                                            color:
                                                kPrimaryColor.withOpacity(0.65),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          AssetsPath.starFillIcon,
                                          color: kOrangeColor,
                                          width: size.height * 0.0140,
                                          height: size.height * 0.0140,
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          "Logistics for all forms of needs.",
                                          style: TextStyle(
                                            fontSize: size.height * 0.0140,
                                            fontWeight: FontWeight.w300,
                                            color:
                                                kPrimaryColor.withOpacity(0.65),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          AssetsPath.starFillIcon,
                                          color: kOrangeColor,
                                          width: size.height * 0.0140,
                                          height: size.height * 0.0140,
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          "Payment Protection",
                                          style: TextStyle(
                                            fontSize: size.height * 0.0140,
                                            fontWeight: FontWeight.w300,
                                            color:
                                                kPrimaryColor.withOpacity(0.65),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          AssetsPath.starFillIcon,
                                          color: kOrangeColor,
                                          width: size.height * 0.0140,
                                          height: size.height * 0.0140,
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          "Create Business Account",
                                          style: TextStyle(
                                            fontSize: size.height * 0.0140,
                                            fontWeight: FontWeight.w300,
                                            color:
                                                kPrimaryColor.withOpacity(0.65),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _accountType = AccountType.social;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                              color: kPlaceholderColor.withOpacity(0.45),
                              width: 0.5,
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _accountType =
                                                    AccountType.social;
                                              });
                                            },
                                            child: _accountType ==
                                                    AccountType.social
                                                ? Container(
                                                    height:
                                                        size.height * 0.0180,
                                                    width: size.height * 0.0180,
                                                    padding:
                                                        const EdgeInsets.all(
                                                            4.5),
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: kPrimaryColor,
                                                    ),
                                                    child: Container(
                                                      height:
                                                          size.height * 0.0140,
                                                      width:
                                                          size.height * 0.0140,
                                                      decoration:
                                                          const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: kWhiteColor,
                                                      ),
                                                    ),
                                                  )
                                                : Container(
                                                    height:
                                                        size.height * 0.0180,
                                                    width: size.height * 0.0180,
                                                    padding:
                                                        const EdgeInsets.all(
                                                            4.5),
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.transparent,
                                                      border: Border.all(
                                                        color:
                                                            kPlaceholderColor,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                  ),
                                          ),
                                          const SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "Social Account",
                                            style: TextStyle(
                                              fontSize: size.height * 0.0160,
                                              fontWeight: FontWeight.w500,
                                              color: kPrimaryColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "FREE",
                                    style: TextStyle(
                                      fontSize: size.height * 0.0170,
                                      fontWeight: FontWeight.bold,
                                      color: kOrangeColor,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10.0),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          AssetsPath.starFillIcon,
                                          color: kOrangeColor,
                                          width: size.height * 0.0140,
                                          height: size.height * 0.0140,
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          "Sell Merchandize",
                                          style: TextStyle(
                                            fontSize: size.height * 0.0140,
                                            fontWeight: FontWeight.w300,
                                            color:
                                                kPrimaryColor.withOpacity(0.65),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          AssetsPath.starFillIcon,
                                          color: kOrangeColor,
                                          width: size.height * 0.0140,
                                          height: size.height * 0.0140,
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          "Access to Affiliate",
                                          style: TextStyle(
                                            fontSize: size.height * 0.0140,
                                            fontWeight: FontWeight.w300,
                                            color:
                                                kPrimaryColor.withOpacity(0.65),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          AssetsPath.starFillIcon,
                                          color: kOrangeColor,
                                          width: size.height * 0.0140,
                                          height: size.height * 0.0140,
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          "Logistics for all forms of needs.",
                                          style: TextStyle(
                                            fontSize: size.height * 0.0140,
                                            fontWeight: FontWeight.w300,
                                            color:
                                                kPrimaryColor.withOpacity(0.65),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          AssetsPath.starFillIcon,
                                          color: kOrangeColor,
                                          width: size.height * 0.0140,
                                          height: size.height * 0.0140,
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          "Payment Protection",
                                          style: TextStyle(
                                            fontSize: size.height * 0.0140,
                                            fontWeight: FontWeight.w300,
                                            color:
                                                kPrimaryColor.withOpacity(0.65),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          AssetsPath.starFillIcon,
                                          color: kOrangeColor,
                                          width: size.height * 0.0140,
                                          height: size.height * 0.0140,
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          "Create Business Account",
                                          style: TextStyle(
                                            fontSize: size.height * 0.0140,
                                            fontWeight: FontWeight.w300,
                                            color:
                                                kPrimaryColor.withOpacity(0.65),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      AppButton(
                        text: "Proceed",
                        type: ButtonType.primary,
                        onPressed: () {
                          CustomRouter.nextScreen(context, "/register");
                        },
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
    );
  }
}
