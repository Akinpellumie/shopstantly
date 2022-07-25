import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/dimensions.dart';
import 'build_image.dart';

class BusinessCardItem extends StatefulWidget {
  const BusinessCardItem({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<BusinessCardItem> createState() => _BusinessCardItemState();
}

class _BusinessCardItemState extends State<BusinessCardItem> {
  int carouselIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: kWhiteColor,
        boxShadow: const [
          BoxShadow(
              color: kBoxShadowColor, offset: Offset(3, 6), blurRadius: 7.0)
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: widget.size.height * 0.070,
                width: widget.size.height * 0.070,
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
                    'Dhheee Collections',
                    style: TextStyle(
                      fontFamily: kDefaultFont,
                      fontSize: widget.size.height * 0.0180,
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                  Text(
                    'Jan 20, 2022',
                    style: TextStyle(
                      fontFamily: kDefaultFont,
                      fontSize: widget.size.height * 0.0150,
                      fontWeight: FontWeight.normal,
                      color: kPlaceholderColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          CarouselSlider.builder(
            options: CarouselOptions(
              height: widget.size.height * 0.20,
              reverse: false,
              //autoPlay: true,
              padEnds: false,
              viewportFraction: 1,
              autoPlayInterval: const Duration(
                seconds: 2,
              ),
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                setState(() {
                  carouselIndex = index;
                });
              },
            ),
            itemCount: urlImages.length,
            itemBuilder: (context, index, itemIndex) {
              final urlImage = urlImages[index];
              return BuildImage(
                imageUrl: urlImage,
                index: index,
              );
            },
          ),
          const SizedBox(
            height: 5.0,
          ),
          Center(
            child: buildIndicator(),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            'Get a FREE Jean when you buy this. This OFFER is specially for you.',
            style: TextStyle(
              fontFamily: kDefaultFont,
              fontSize: widget.size.height * 0.0180,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
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
                    size: widget.size.height * 0.025,
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
                          size: widget.size.height * 0.025,
                        ),
                        const SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          '43',
                          style: TextStyle(
                            fontFamily: kDefaultFont,
                            fontSize: widget.size.height * 0.0150,
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
                          size: widget.size.height * 0.025,
                        ),
                        const SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          'Bookmark',
                          style: TextStyle(
                            fontFamily: kDefaultFont,
                            fontSize: widget.size.height * 0.0150,
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
                  size: widget.size.height * 0.020,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: carouselIndex,
        count: urlImages.length,
        effect: const WormEffect(
            activeDotColor: kOrangeColor,
            dotColor: kPrimaryAccentColor,
            dotHeight: 10.0,
            dotWidth: 10.0,
            spacing: 10.0),
      );
  final urlImages = [
    'https://images.unsplash.com/photo-1536782376847-5c9d14d97cc0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80',
    'https://images.unsplash.com/photo-1587502537745-84b86da1204f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8b2NlYW58ZW58MHx8MHx8&w=1000&q=80',
    'https://media.istockphoto.com/photos/go-ahead-and-continuously-improvement-concept-silhouette-man-jump-on-picture-id1295289697?b=1&k=20&m=1295289697&s=170667a&w=0&h=g3rYcOG-2SiYwO9Gmtkbh9x7fxfQNoOiCK8FqRdqC0s='
  ];
}
