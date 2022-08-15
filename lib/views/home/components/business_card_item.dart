import 'package:face_pile/face_pile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/dimensions.dart';
import 'custom_double_grid.dart';
import 'custom_staggered_grid.dart';
import 'image_grid_post.dart';
import 'single_image_card.dart';

class BusinessCardItem extends StatefulWidget {
  const BusinessCardItem({
    Key? key,
    required this.imageCount,
    required this.size,
    required List<String> imageUrls,
  })  : _imageUrls = imageUrls,
        super(key: key);

  final int imageCount;
  final Size size;
  final List<String> _imageUrls;
  @override
  State<BusinessCardItem> createState() => _BusinessCardItemState();
}

class _BusinessCardItemState extends State<BusinessCardItem> {
  int carouselIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 40.0,
                      height: 40.0,
                      padding: const EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: kPrimaryColor,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(4.0),
                          child: Image.asset(
                            AssetsPath.image1,
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tolani Soft',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.0150,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Ibadan, Nigeria',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.0130,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 15.0,
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '3 days ago',
                    style: TextStyle(
                      color: kPlaceholderColor.withOpacity(0.75),
                      fontFamily: kDefaultFont,
                      fontSize: size.height * 0.0150,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  const Icon(
                    Icons.more_vert_outlined,
                    color: kPrimaryColor,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 13.0,
          ),
          SizedBox(
            width: double.infinity,
            child: displayWidget(3, size, widget._imageUrls),
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                SvgPicture.asset(
                  AssetsPath.cart,
                  color: kPlaceholderColor,
                  height: size.height * 0.025,
                  width: size.height * 0.025,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Icon(
                  CupertinoIcons.heart,
                  color: kPlaceholderColor,
                  size: size.height * 0.025,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Icon(
                  Icons.share_outlined,
                  color: kPlaceholderColor,
                  size: size.height * 0.025,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                SvgPicture.asset(
                  AssetsPath.wishlist,
                  color: kPlaceholderColor,
                  height: size.height * 0.025,
                  width: size.height * 0.025,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consec- tetur adipiscing elit.',
            style: TextStyle(
              fontFamily: kDefaultFont,
              fontSize: size.height * 0.0180,
              fontWeight: FontWeight.w500,
              color: kPrimaryColor,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Row(
                  children: [
                    Text(
                      '30k views',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.0120,
                        fontWeight: FontWeight.normal,
                        color: kPlaceholderColor.withOpacity(0.75),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      height: 5.0,
                      width: 5.0,
                      decoration: const BoxDecoration(
                        color: kPlaceholderColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Text(
                      '412 comments',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.0120,
                        fontWeight: FontWeight.normal,
                        color: kPlaceholderColor.withOpacity(0.75),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Flexible(
                  child: Row(
                    children: [
                      FacePile(
                        radius: 10,
                        space: 12,
                        images: const [
                          NetworkImage("https://i.pravatar.cc/300?img=1"),
                          NetworkImage("https://i.pravatar.cc/300?img=2"),
                          NetworkImage("https://i.pravatar.cc/300?img=3"),
                        ],
                        border: Border.all(color: kWhiteColor, width: 2),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Flexible(
                        child: Text(
                          '+28 others engaged this post',
                          style: TextStyle(
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.0120,
                            fontWeight: FontWeight.normal,
                            color: kPlaceholderColor.withOpacity(0.75),
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
          const SizedBox(
            height: 10.0,
          ),
          RichText(
            text: TextSpan(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nisi tortor, molestie sed convallis sit amet, ultrices et enim. In ut maximus augue, quis venenatis risus.. ',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: size.height * 0.0130,
                fontWeight: FontWeight.w300,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Read more',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: size.height * 0.0130,
                    fontStyle: FontStyle.italic,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => print('Tap Here onTap'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayWidget(int imgCount, Size _size, List<String> _imageUrls) {
    if (_imageUrls.length == 1) {
      return SingleImageCard(
        imageUrl: _imageUrls[0],
        size: _size,
      );
    }
    if (_imageUrls.length == 2) {
      return CustomDoubleGrid(imageUrls: _imageUrls);
    }
    if (_imageUrls.length == 3) {
      return CustomStaggeredGrid(imageUrls: _imageUrls);
    }
    if (_imageUrls.length == 4) {
      return ImageGridPost(size: _size, imageUrls: _imageUrls);
    } else {
      return SingleImageCard(
        imageUrl: _imageUrls[0],
        size: _size,
      );
    }
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: carouselIndex,
        count: urlImages.length,
        effect: const WormEffect(
            activeDotColor: kOrangeColor,
            dotColor: kPrimaryAccentColor,
            dotHeight: 10.0,
            dotWidth: 10.0,
            spacing: 10.0,),
      );
  final urlImages = [
    'https://images.unsplash.com/photo-1536782376847-5c9d14d97cc0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80',
    'https://images.unsplash.com/photo-1587502537745-84b86da1204f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8b2NlYW58ZW58MHx8MHx8&w=1000&q=80',
    'https://media.istockphoto.com/photos/go-ahead-and-continuously-improvement-concept-silhouette-man-jump-on-picture-id1295289697?b=1&k=20&m=1295289697&s=170667a&w=0&h=g3rYcOG-2SiYwO9Gmtkbh9x7fxfQNoOiCK8FqRdqC0s='
  ];
}
