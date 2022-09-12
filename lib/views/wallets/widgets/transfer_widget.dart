import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/custom_router.dart';
import '../../../utils/dimensions.dart';
import '../../../widgets/dotted_separator.dart';


class TransferWidget extends StatelessWidget {
  const TransferWidget({
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 10.0, bottom: 10.0),
            height: 10.0,
            width: size.width,
            color: kIconBgColor,
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Text(
                  'Scheduled Transfer',
                  style: TextStyle(
                    fontFamily: kDefaultFont,
                    fontSize: size.height * 0.018,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            width: size.width,
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 60.0,
                      width: size.width / 6,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: kPlaceholderColor,
                        ),
                        borderRadius:
                            BorderRadius.circular(15.0),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: kPlaceholderColor,
                      ),
                    ),
                    Text(
                      'New',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.014,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 60.0,
                      width: size.width / 6,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: kPlaceholderColor,
                        ),
                        borderRadius:
                            BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(15.0),
                        child: Image.asset(
                          AssetsPath.image1,
                          fit: BoxFit.cover,
                          height: 60.0,
                          width: size.width / 6,
                        ),
                      ),
                    ),
                    Text(
                      'Linda',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.014,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 60.0,
                      width: size.width / 6,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: kPlaceholderColor,
                        ),
                        borderRadius:
                            BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(15.0),
                        child: Image.asset(
                          AssetsPath.image2,
                          fit: BoxFit.cover,
                          height: 60.0,
                          width: size.width / 6,
                        ),
                      ),
                    ),
                    Text(
                      'Lade',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.014,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 60.0,
                      width: size.width / 6,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: kPlaceholderColor,
                        ),
                        borderRadius:
                            BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(15.0),
                        child: Image.asset(
                          AssetsPath.image1,
                          fit: BoxFit.cover,
                          height: 60.0,
                          width: size.width / 6,
                        ),
                      ),
                    ),
                    Text(
                      'Yemi',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.014,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 60.0,
                      width: size.width / 6,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: kPlaceholderColor,
                        ),
                        borderRadius:
                            BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(15.0),
                        child: Image.asset(
                          AssetsPath.image2,
                          fit: BoxFit.cover,
                          height: 60.0,
                          width: size.width / 6,
                        ),
                      ),
                    ),
                    Text(
                      'Akin',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.014,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 20.0,
            ),
            child: const DottedSeparator(
              dashHeight: 0.5,
              dashWidth: 5.0,
              color: kPlaceholderColor,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 20.0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Transfer To",
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
          ),
          GestureDetector(
            onTap: () {
              CustomRouter.nextScreen(context, '/sendMoney');
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
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
                          "Shopstantly User",
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
            onTap: () {
              CustomRouter.nextScreen(context, '/sendMoney');
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AssetsPath.bank,
                          color: kPrimaryColor,
                          height: size.height * 0.0200,
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          "Bank Account",
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
        ],
      ),
    );
  }
}
