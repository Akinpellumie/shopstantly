import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:shopstantly_app/utils/custom_router.dart';

import '../../../utils/app_button.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/dimensions.dart';
import 'components/quality_counter.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: kDarkColor,
          ),
          onPressed: () => CustomRouter.previousScreen(context),
        ),
        elevation: 0.0,
        backgroundColor: kBackgroundColor,
        title: const Text(
          '@kerah_stores',
          style: TextStyle(
              fontFamily: kDefaultFont,
              fontSize: kNormalText,
              color: kPrimaryTextColor,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AssetsPath.settingsIcon,
              color: kLightGrayColor,
              width: 25.0,
              height: 25.0,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        AssetsPath.heels,
                        width: double.infinity,
                        height: size.height * 0.30,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            AssetsPath.heels,
                            height: size.height * 0.10,
                            width: size.height * 0.090,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            AssetsPath.heels,
                            height: size.height * 0.10,
                            width: size.height * 0.090,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            AssetsPath.heels,
                            height: size.height * 0.10,
                            width: size.height * 0.090,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Gucci Stilieto Heels',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: size.width * 0.050,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        QualityCounter(size: size),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Comes with Delivery Box',
                            style: TextStyle(
                              color: kPrimaryTextColor,
                              fontSize: size.width * 0.035,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            RatingBar(
                                initialRating: 4,
                                maxRating: 5,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: size.height * 0.0225,
                                ratingWidget: RatingWidget(
                                  full: SvgPicture.asset(
                                    AssetsPath.starFillIcon,
                                    color: kOrangeColor,
                                  ),
                                  half: SvgPicture.asset(
                                    AssetsPath.starHalfIcon,
                                    color: kOrangeColor,
                                  ),
                                  empty: SvgPicture.asset(
                                    AssetsPath.starOutlineIcon,
                                    color: kOrangeColor,
                                  ),
                                ),
                                onRatingUpdate: (value) {
                                  setState(() {
                                    //_ratingValue = value;
                                  });
                                }),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              '(320 Reviews)',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: size.width * 0.035,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: size.width / 2 - 20,
                              margin: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Image.asset(
                                    AssetsPath.sofast,
                                    height: 20.0,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(
                                    width: 7.0,
                                  ),
                                  Text(
                                    'FREE Delivery Within City',
                                    style: TextStyle(
                                      color: kPlaceholderColor,
                                      fontFamily: kDefaultFont,
                                      fontWeight: FontWeight.w400,
                                      fontSize: size.height * 0.0130,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: size.width / 2 - 20,
                              margin: const EdgeInsets.only(top: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    '23 of 50 items left',
                                    style: TextStyle(
                                      color: kPlaceholderColor,
                                      fontFamily: kDefaultFont,
                                      fontWeight: FontWeight.w400,
                                      fontSize: size.height * 0.0135,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  LinearPercentIndicator(
                                    lineHeight: 6.0,
                                    percent: 0.6,
                                    padding: const EdgeInsets.all(0),
                                    barRadius: const Radius.circular(10.0),
                                    progressColor: kPlaceholderColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: kPrimaryColor.withOpacity(0.6)),
                                  shape: BoxShape.circle),
                              child: Text(
                                '40',
                                style: TextStyle(
                                    color: kPrimaryColor.withOpacity(0.6),
                                    fontSize: size.height * 0.0170,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: kDefaultFont),
                              ),
                            ),
                            const SizedBox(
                              width: 15.0,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: kPrimaryColor.withOpacity(0.6)),
                                  shape: BoxShape.circle),
                              child: Text(
                                '41',
                                style: TextStyle(
                                    color: kPrimaryColor.withOpacity(0.6),
                                    fontSize: size.height * 0.0170,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: kDefaultFont),
                              ),
                            ),
                            const SizedBox(
                              width: 15.0,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  border: Border.all(color: kPrimaryColor),
                                  shape: BoxShape.circle),
                              child: Text(
                                '42',
                                style: TextStyle(
                                    color: kWhiteColor,
                                    fontSize: size.height * 0.0170,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: kDefaultFont),
                              ),
                            ),
                            const SizedBox(
                              width: 15.0,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: kPrimaryColor.withOpacity(0.6)),
                                  shape: BoxShape.circle),
                              child: Text(
                                '43',
                                style: TextStyle(
                                    color: kPrimaryColor.withOpacity(0.6),
                                    fontSize: size.height * 0.0170,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: kDefaultFont),
                              ),
                            ),
                            const SizedBox(
                              width: 15.0,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: kPrimaryColor.withOpacity(0.6)),
                                  shape: BoxShape.circle),
                              child: Text(
                                '44',
                                style: TextStyle(
                                    color: kPrimaryColor.withOpacity(0.6),
                                    fontSize: size.height * 0.0170,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: kDefaultFont),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Colours Available:     ',
                              style: TextStyle(
                                  color: kPrimaryColor.withOpacity(0.8),
                                  fontSize: size.height * 0.0170,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: kDefaultFont),
                            ),
                            Container(
                              padding: const EdgeInsets.all(2.0),
                              decoration: const BoxDecoration(
                                  color: kPurpleColor, shape: BoxShape.circle),
                              child: Icon(
                                null,
                                size: size.height * 0.0200,
                                color: kWhiteColor,
                              ),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Container(
                              padding: const EdgeInsets.all(2.0),
                              decoration: const BoxDecoration(
                                  color: kPrimaryOrangeColor,
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.check,
                                size: size.height * 0.0200,
                                color: kWhiteColor,
                              ),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Container(
                              padding: const EdgeInsets.all(2.0),
                              decoration: const BoxDecoration(
                                  color: kOrangeColor, shape: BoxShape.circle),
                              child: Icon(
                                null,
                                size: size.height * 0.0200,
                                color: kWhiteColor,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Product Details',
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: size.height * 0.050,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: kDefaultFont),
                            ),
                            Text(
                              'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                              style: TextStyle(
                                  color: kPrimaryTextColor,
                                  fontSize: size.height * 0.0220,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: kDefaultFont),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: size.width * 0.70,
                              child: AppButton(
                                text: 'Add To Cart (1,500)',
                                type: ButtonType.primary,
                                onPressed: () {
                                  //CustomRouter.nextScreen(context, "/mainPage");
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            SvgPicture.asset(
                              AssetsPath.wishlist,
                              width: size.width * 0.12,
                            )
                          ],
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
    );
  }
}
