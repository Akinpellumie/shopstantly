import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/dimensions.dart';

class NewsCardItem extends StatelessWidget {
  const NewsCardItem({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: kWhiteColor,
        boxShadow: const [
          BoxShadow(
            color: kBoxShadowColor,
            offset: Offset(3, 6),
            blurRadius: 7.0,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: size.height * 0.070,
                width: size.height * 0.070,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kProfileBannerColor,
                  border: Border.all(color: Colors.white, width: 5.0),
                ),
                child: ClipOval(
                  child: Image.asset(
                    AssetsPath.imageDp,
                  ),
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Blog Name',
                    style: TextStyle(
                      fontFamily: kDefaultFont,
                      fontSize: size.height * 0.0180,
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                  Text(
                    'Jan 20, 2022',
                    style: TextStyle(
                      fontFamily: kDefaultFont,
                      fontSize: size.height * 0.0150,
                      fontWeight: FontWeight.normal,
                      color: kPlaceholderColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: size.height * 0.25,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                AssetsPath.fruit,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            'Food price rise fears amid staff shortages testing length',
            style: TextStyle(
              fontFamily: kDefaultFont,
              fontSize: size.height * 0.0180,
              fontWeight: FontWeight.w500,
              color: kPrimaryColor,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    CupertinoIcons.heart,
                    color: kPlaceholderColor,
                    size: size.height * 0.025,
                  ),
                  const SizedBox(
                    width: 7.0,
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          CupertinoIcons.chat_bubble,
                          color: kPlaceholderColor,
                          size: size.height * 0.025,
                        ),
                        const SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          '43',
                          style: TextStyle(
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.0150,
                            fontWeight: FontWeight.w300,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 7.0,
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          CupertinoIcons.bookmark,
                          color: kPlaceholderColor,
                          size: size.height * 0.025,
                        ),
                        const SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          'Bookmark',
                          style: TextStyle(
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.0150,
                            fontWeight: FontWeight.w300,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(right: 10.0),
                child: Icon(
                  CupertinoIcons.paperplane,
                  color: kPlaceholderColor,
                  size: size.height * 0.020,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
