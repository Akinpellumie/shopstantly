import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/assets_path.dart';
import '../utils/dimensions.dart';

class GeneralPostCard extends StatelessWidget {
  const GeneralPostCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            width: size.width,
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            height: 25.0,
                            width: 25.0,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: kProfileBannerColor,
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                AssetsPath.image2,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            '@emmanuel_ostrich',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontFamily: kDefaultFont,
                              fontWeight: FontWeight.w400,
                              fontSize: size.height * 0.0160,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '4mins',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontFamily: kDefaultFont,
                        fontWeight: FontWeight.w300,
                        fontSize: size.height * 0.0130,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consec tetur adis tres piscing elit, sed do eiusmod tempor incididutunt ut labore et dolore',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontFamily: kDefaultFont,
                    fontWeight: FontWeight.normal,
                    fontSize: size.height * 0.0160,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: SizedBox.fromSize(
                          size:
                              Size(size.height * 0.0300, size.height * 0.0300),
                          child: Icon(
                            CupertinoIcons.heart,
                            color: kPrimaryColor,
                            size: size.height * 0.0220,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SizedBox.fromSize(
                          size:
                              Size(size.height * 0.0300, size.height * 0.0300),
                          child: Icon(
                            Icons.share_outlined,
                            color: kPrimaryColor,
                            size: size.height * 0.0220,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SizedBox.fromSize(
                          size:
                              Size(size.height * 0.0300, size.height * 0.0300),
                          child: Icon(
                            CupertinoIcons.bookmark,
                            color: kPrimaryColor,
                            size: size.height * 0.0220,
                          ),
                        ),
                      ),
                      // IconButton(
                      //   onPressed: () {},
                      //   padding: const EdgeInsets.all(0.0),
                      //   alignment: Alignment.centerLeft,
                      //   icon: Icon(
                      //     CupertinoIcons.heart,
                      //     color: kPrimaryColor,
                      //     size: size.height * 0.0200,
                      //   ),
                      // ),
                      // IconButton(
                      //   onPressed: () {},
                      //   padding: const EdgeInsets.all(0.0),
                      //   alignment: Alignment.centerLeft,
                      //   icon: Icon(
                      //     Icons.share_outlined,
                      //     color: kPrimaryColor,
                      //     size: size.height * 0.0200,
                      //   ),
                      // ),
                      // IconButton(
                      //   onPressed: () {},
                      //   padding: const EdgeInsets.all(0.0),
                      //   alignment: Alignment.centerLeft,
                      //   icon: Icon(
                      //     CupertinoIcons.bookmark,
                      //     color: kPrimaryColor,
                      //     size: size.height * 0.0200,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kLightGrayColor.withOpacity(0.35),
            width: size.width,
            height: 2.0,
          ),
        ],
      ),
    );
  }
}
