import 'package:dotted_border/dotted_border.dart';
import 'package:face_pile/face_pile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopstantly_app/utils/assets_path.dart';
import 'package:shopstantly_app/utils/custom_router.dart';
import 'package:shopstantly_app/widgets/dotted_separator.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/base_app_bar.dart';
import '../../../utils/dimensions.dart';

class PersonalMainWalletScreen extends StatefulWidget {
  const PersonalMainWalletScreen({Key? key}) : super(key: key);

  @override
  State<PersonalMainWalletScreen> createState() =>
      _PersonalMainWalletScreenState();
}

class _PersonalMainWalletScreenState extends State<PersonalMainWalletScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Hello Dotun Felix',
        appBar: AppBar(),
        showLogo: false,
      ),
      body: Column(
        children: [
          Container(
            height: 50.0,
            margin:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Personal Wallet',
                  style: TextStyle(
                    fontFamily: kDefaultFont,
                    fontSize: size.height * 0.0200,
                    color: kWhiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: kWhiteColor,
                  size: size.height * 0.0300,
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
                          const DottedSeparator(
                            dashHeight: 0.5,
                            dashWidth: 5.0,
                            color: kPlaceholderColor,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "My Account",
                                  style: TextStyle(
                                    color: kDarkColor,
                                    fontFamily: kDefaultFont,
                                    fontWeight: FontWeight.w500,
                                    fontSize: size.height * 0.019,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.more_horiz_outlined,
                                color: kPrimaryColor,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          GestureDetector(
                            onTap: () =>
                                CustomRouter.nextScreen(context, '/mainWallet'),
                            child: SizedBox(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          AssetsPath.profile,
                                          color: kPrimaryColor,
                                          height: size.height * 0.0200,
                                        ),
                                        const SizedBox(
                                          width: 15.0,
                                        ),
                                        Text(
                                          "Personal",
                                          style: TextStyle(
                                            color: kDarkColor,
                                            fontFamily: kDefaultFont,
                                            fontWeight: FontWeight.w400,
                                            fontSize: size.height * 0.019,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_right_outlined,
                                    color: kPrimaryColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          GestureDetector(
                            onTap: () =>
                                CustomRouter.nextScreen(context, '/mainWallet'),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        AssetsPath.socialAcct,
                                        color: kPrimaryColor,
                                        height: size.height * 0.0200,
                                      ),
                                      const SizedBox(
                                        width: 15.0,
                                      ),
                                      Text(
                                        "Family",
                                        style: TextStyle(
                                          color: kDarkColor,
                                          fontFamily: kDefaultFont,
                                          fontWeight: FontWeight.w400,
                                          fontSize: size.height * 0.019,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_right_outlined,
                                  color: kPrimaryColor,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              FacePile(
                                radius: 18,
                                space: 27,
                                images: const [
                                  NetworkImage(
                                      "https://i.pravatar.cc/300?img=1"),
                                  NetworkImage(
                                      "https://i.pravatar.cc/300?img=2"),
                                  NetworkImage(
                                      "https://i.pravatar.cc/300?img=3"),
                                ],
                                border:
                                    Border.all(color: kWhiteColor, width: 2),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Flexible(
                                child: Text(
                                  '+2 others have access',
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontFamily: kDefaultFont,
                                    fontWeight: FontWeight.w400,
                                    fontSize: size.height * 0.0170,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const DottedSeparator(
                            dashHeight: 0.5,
                            dashWidth: 5.0,
                            color: kPlaceholderColor,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Other Accounts",
                                  style: TextStyle(
                                    color: kDarkColor,
                                    fontFamily: kDefaultFont,
                                    fontWeight: FontWeight.w500,
                                    fontSize: size.height * 0.019,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.more_horiz_outlined,
                                color: kPrimaryColor,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          GestureDetector(
                            onTap: () =>
                                CustomRouter.nextScreen(context, '/mainWallet'),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        AssetsPath.cashback,
                                        color: kPrimaryColor,
                                        height: size.height * 0.0200,
                                      ),
                                      const SizedBox(
                                        width: 15.0,
                                      ),
                                      Text(
                                        "Cashback",
                                        style: TextStyle(
                                          color: kDarkColor,
                                          fontFamily: kDefaultFont,
                                          fontWeight: FontWeight.w400,
                                          fontSize: size.height * 0.019,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_right_outlined,
                                  color: kPrimaryColor,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          GestureDetector(
                            onTap: () =>
                                CustomRouter.nextScreen(context, '/mainWallet'),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        AssetsPath.shopping,
                                        color: kPrimaryColor,
                                        height: size.height * 0.0200,
                                      ),
                                      const SizedBox(
                                        width: 15.0,
                                      ),
                                      Text(
                                        "Store",
                                        style: TextStyle(
                                          color: kDarkColor,
                                          fontFamily: kDefaultFont,
                                          fontWeight: FontWeight.w400,
                                          fontSize: size.height * 0.019,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_right_outlined,
                                  color: kPrimaryColor,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          GestureDetector(
                            onTap: () =>
                                CustomRouter.nextScreen(context, '/mainWallet'),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        AssetsPath.invest,
                                        color: kPrimaryColor,
                                        height: size.height * 0.0200,
                                      ),
                                      const SizedBox(
                                        width: 15.0,
                                      ),
                                      Text(
                                        "Investment",
                                        style: TextStyle(
                                          color: kDarkColor,
                                          fontFamily: kDefaultFont,
                                          fontWeight: FontWeight.w400,
                                          fontSize: size.height * 0.019,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_right_outlined,
                                  color: kPrimaryColor,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          GestureDetector(
                            onTap: () =>
                                CustomRouter.nextScreen(context, '/mainWallet'),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        AssetsPath.calendar,
                                        color: kPrimaryColor,
                                        height: size.height * 0.0200,
                                      ),
                                      const SizedBox(
                                        width: 15.0,
                                      ),
                                      Text(
                                        "Event",
                                        style: TextStyle(
                                          color: kDarkColor,
                                          fontFamily: kDefaultFont,
                                          fontWeight: FontWeight.w400,
                                          fontSize: size.height * 0.019,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_right_outlined,
                                  color: kPrimaryColor,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const DottedSeparator(
                            dashHeight: 0.5,
                            dashWidth: 5.0,
                            color: kPlaceholderColor,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Administrative Accounts",
                                  style: TextStyle(
                                    color: kDarkColor,
                                    fontFamily: kDefaultFont,
                                    fontWeight: FontWeight.w500,
                                    fontSize: size.height * 0.019,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.more_horiz_outlined,
                                color: kPrimaryColor,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          GestureDetector(
                            onTap: () =>
                                CustomRouter.nextScreen(context, '/mainWallet'),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        AssetsPath.shopping,
                                        color: kPrimaryColor,
                                        height: size.height * 0.0200,
                                      ),
                                      const SizedBox(
                                        width: 15.0,
                                      ),
                                      Text(
                                        "Kerah Stores",
                                        style: TextStyle(
                                          color: kDarkColor,
                                          fontFamily: kDefaultFont,
                                          fontWeight: FontWeight.w400,
                                          fontSize: size.height * 0.019,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_right_outlined,
                                  color: kPrimaryColor,
                                ),
                              ],
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
