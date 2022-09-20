import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/dimensions.dart';
import '../components/social_card_item.dart';

class FeedView extends StatefulWidget {
  final Size size;
  const FeedView({Key? key, required this.size}) : super(key: key);

  @override
  State<FeedView> createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Status',
                  style: TextStyle(
                    color: kPrimaryTextColor,
                    fontSize: widget.size.height * 0.019,
                    fontFamily: kDefaultFont,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'see all',
                style: TextStyle(
                  color: kPrimaryTextColor.withOpacity(0.45),
                  fontSize: widget.size.height * 0.015,
                  fontFamily: kDefaultFont,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            width: widget.size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: 60.0,
                      width: widget.size.width / 6,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: kPlaceholderColor,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: kPlaceholderColor,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'New',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: widget.size.height * 0.014,
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
                      width: widget.size.width / 6,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: kPlaceholderColor,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          AssetsPath.image1,
                          fit: BoxFit.cover,
                          height: 60.0,
                          width: widget.size.width / 6,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Linda',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: widget.size.height * 0.014,
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
                      width: widget.size.width / 6,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: kPlaceholderColor,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          AssetsPath.image2,
                          fit: BoxFit.cover,
                          height: 60.0,
                          width: widget.size.width / 6,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Lade',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: widget.size.height * 0.014,
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
                      width: widget.size.width / 6,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: kPlaceholderColor,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          AssetsPath.image1,
                          fit: BoxFit.cover,
                          height: 60.0,
                          width: widget.size.width / 6,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Yemi',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: widget.size.height * 0.014,
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
                      width: widget.size.width / 6,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: kPlaceholderColor,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          AssetsPath.image2,
                          fit: BoxFit.cover,
                          height: 60.0,
                          width: widget.size.width / 6,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Akin',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: widget.size.height * 0.014,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          SocialCardItem(
            size: widget.size,
            hasMedia: false,
            imageUrls: _image4Urls,
          ),
          const SizedBox(
            height: 20.0,
          ),
          SocialCardItem(
            size: widget.size,
            isVideo: true,
            videoUrl: videoUrl,
            imageUrls: _image4Urls,
          ),
          const SizedBox(
            height: 20.0,
          ),
          SocialCardItem(
            size: widget.size,
            imageUrls: _image4Urls,
          ),
          const SizedBox(
            height: 20.0,
          ),
          SocialCardItem(
            size: widget.size,
            imageUrls: _image1Urls,
          ),
          const SizedBox(
            height: 20.0,
          ),
          SocialCardItem(
            size: widget.size,
            imageUrls: _image2Urls,
          ),
          const SizedBox(
            height: 20.0,
          ),
          SocialCardItem(
            size: widget.size,
            imageUrls: _image3Urls,
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }

  final List<String> _image3Urls = [
    'https://i.pravatar.cc/300?img=1',
    'https://i.pravatar.cc/300?img=3',
    'https://i.pravatar.cc/300?img=7'
  ];

  final List<String> _image4Urls = [
    'https://i.pravatar.cc/300?img=2',
    'https://i.pravatar.cc/300?img=5',
    'https://i.pravatar.cc/300?img=9',
    'https://i.pravatar.cc/300?img=8'
  ];

  final List<String> _image2Urls = [
    'https://i.pravatar.cc/300?img=9',
    'https://i.pravatar.cc/300?img=8'
  ];

  final List<String> _image1Urls = ['https://i.pravatar.cc/300?img=4'];

  final videoUrl =
      'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4';
}
