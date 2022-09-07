import 'package:face_pile/face_pile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../utils/app_colors.dart';
import '../utils/assets_path.dart';
import '../utils/dimensions.dart';

class GeneralPostCard extends StatelessWidget {
  const GeneralPostCard({
    Key? key,
    required this.size,
    this.hasBoostPost = false,
  }) : super(key: key);

  final Size size;
  final bool hasBoostPost;

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
                Visibility(
                  visible: !hasBoostPost,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox.fromSize(
                            size: Size(
                                size.height * 0.0300, size.height * 0.0300),
                            child: Icon(
                              CupertinoIcons.heart,
                              color: kPrimaryColor,
                              size: size.height * 0.0220,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox.fromSize(
                            size: Size(
                                size.height * 0.0300, size.height * 0.0300),
                            child: Icon(
                              CupertinoIcons.chat_bubble,
                              color: kPrimaryColor,
                              size: size.height * 0.0220,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox.fromSize(
                            size: Size(
                                size.height * 0.0300, size.height * 0.0300),
                            child: Icon(
                              Icons.share_outlined,
                              color: kPrimaryColor,
                              size: size.height * 0.0220,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox.fromSize(
                            size: Size(
                                size.height * 0.0300, size.height * 0.0300),
                            child: Icon(
                              CupertinoIcons.bookmark,
                              color: kPrimaryColor,
                              size: size.height * 0.0220,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Flexible(
                          child: Row(
                            children: [
                              FacePile(
                                radius: 10,
                                space: 10,
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
                                  '+28 others engaged this post',
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontFamily: kDefaultFont,
                                    fontWeight: FontWeight.w300,
                                    fontSize: size.height * 0.0120,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: hasBoostPost,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10.0),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 10.0,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.0,
                            color: kPrimaryColor,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: ClipRRect(
                                clipBehavior: Clip.hardEdge,
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  AssetsPath.sneakerPhoto,
                                  height: 100.0,
                                  width: size.width * 0.30,
                                  fit: BoxFit.fill,
                                  loadingBuilder: (BuildContext context,
                                      Widget child,
                                      ImageChunkEvent? loadingProgress) {
                                    if (loadingProgress == null) {
                                      return child;
                                    }
                                    return Center(
                                      child: CircularProgressIndicator(
                                        value: loadingProgress
                                                    .expectedTotalBytes !=
                                                null
                                            ? loadingProgress
                                                    .cumulativeBytesLoaded /
                                                loadingProgress
                                                    .expectedTotalBytes!
                                            : null,
                                      ),
                                    );
                                  },
                                  errorBuilder: (BuildContext context,
                                      Object exception,
                                      StackTrace? stackTrace) {
                                    // Appropriate logging or analytics, e.g.
                                    // myAnalytics.recordError(
                                    //   'An error occurred loading "https://example.does.not.exist/image.jpg"',
                                    //   exception,
                                    //   stackTrace,
                                    // );
                                    return const Icon(Icons.image_not_supported);
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Flexible(
                              child: SizedBox(
                                width: size.width * 0.65,
                                height: 100.0,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Garnished Pasta with sauce',
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: size.height * 0.0160,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Text(
                                            '#1,500',
                                            style: TextStyle(
                                              color: kPrimaryColor,
                                              fontSize: size.height * 0.017,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '#2,500',
                                          style: TextStyle(
                                            color: kPrimaryColor,
                                            fontSize: size.height * 0.015,
                                            fontWeight: FontWeight.normal,
                                            fontStyle: FontStyle.italic,
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Image.asset(
                                          AssetsPath.iconLogo,
                                          height: 18.0,
                                          fit: BoxFit.contain,
                                        ),
                                        const SizedBox(
                                          width: 7.0,
                                        ),
                                        Flexible(
                                          child: Text(
                                            'FREE Delivery Within City',
                                            style: TextStyle(
                                              color: kPrimaryColor,
                                              fontFamily: kDefaultFont,
                                              fontWeight: FontWeight.w400,
                                              fontSize: size.height * 0.0130,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Text(
                                          '23 of 50 items left',
                                          style: TextStyle(
                                            color: kPrimaryColor,
                                            fontFamily: kDefaultFont,
                                            fontWeight: FontWeight.w400,
                                            fontSize: size.height * 0.0135,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 2.0,
                                        ),
                                        LinearPercentIndicator(
                                          lineHeight: 4.0,
                                          percent: 0.6,
                                          padding: const EdgeInsets.all(0),
                                          barRadius:
                                              const Radius.circular(10.0),
                                          progressColor: kPlaceholderColor,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            AssetsPath.cart,
                            color: kPrimaryColor,
                            height: size.height * 0.025,
                            width: size.height * 0.025,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            CupertinoIcons.heart,
                            color: kPrimaryColor,
                            size: size.height * 0.025,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.share_outlined,
                            color: kPrimaryColor,
                            size: size.height * 0.025,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          SvgPicture.asset(
                            AssetsPath.wishlist,
                            color: kPrimaryColor,
                            height: size.height * 0.025,
                            width: size.height * 0.025,
                          ),
                        ],
                      ),
                      // const SizedBox(
                      //   height: 10.0,
                      // ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
