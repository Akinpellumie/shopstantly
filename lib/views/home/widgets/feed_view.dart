import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/dimensions.dart';
import '../components/social_card_item.dart';

class FeedView extends StatefulWidget {
  final Size size;
  final bool showStatus;
  const FeedView({
    Key? key,
    required this.size,
    this.showStatus = true,
  }) : super(key: key);

  @override
  State<FeedView> createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          Visibility(
            visible: widget.showStatus,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Story',
                          style: TextStyle(
                            color: kPrimaryTextColor,
                            fontSize: size.height * 0.018,
                            fontFamily: kDefaultFont,
                            fontWeight: FontWeight.w600,
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
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 80.0,
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Column(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   children: [
                      //     Container(
                      //       height: 50.0,
                      //       width: 55.0,
                      //       decoration: BoxDecoration(
                      //         border: Border.all(
                      //           width: 1.5,
                      //           color: kPlaceholderColor,
                      //         ),
                      //         borderRadius: BorderRadius.circular(22.0),
                      //       ),
                      //       child: const Icon(
                      //         Icons.add,
                      //         color: kPlaceholderColor,
                      //       ),
                      //     ),
                      //     SizedBox()
                      //     Align(
                      //       alignment: Alignment.bottomCenter,
                      //       child: Text(
                      //         'New',
                      //         style: TextStyle(
                      //           fontFamily: kDefaultFont,
                      //           fontSize: widget.size.height * 0.014,
                      //           color: kPrimaryColor,
                      //           fontWeight: FontWeight.w400,
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      Column(
                        children: [
                          Stack(
                            //alignment: Alignment.center,
                            children: [
                              Container(
                                height: 60.0,
                                width: widget.size.width / 6,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 3.0,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 3.0,
                                    color: kPrimaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(23.0),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    AssetsPath.image1,
                                    fit: BoxFit.cover,
                                    height: 50.0,
                                    width: widget.size.width / 6,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0.0,
                                right: 0.0,
                                child: Icon(
                                  Icons.add_circle,
                                  color: kPrimaryColor,
                                  size: size.height * 0.04,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'My Story',
                            style: TextStyle(
                              fontFamily: kDefaultFont,
                              fontSize: widget.size.height * 0.014,
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: ListView.separated(
                          physics: const AlwaysScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 6,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  height: 60.0,
                                  width: widget.size.width / 6,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 4.0,
                                    vertical: 3.0,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 3.0,
                                      color: kPrimaryColor,
                                    ),
                                    borderRadius: BorderRadius.circular(23.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.asset(
                                      AssetsPath.image1,
                                      fit: BoxFit.cover,
                                      height: 50.0,
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
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) =>
                              const SizedBox(
                            width: 10.0,
                          ),
                        ),
                      ),

                      // Column(
                      //   children: [
                      //     Container(
                      //       height: 60.0,
                      //       width: widget.size.width / 6,
                      //       padding: const EdgeInsets.symmetric(
                      //         horizontal: 4.0,
                      //         vertical: 3.0,
                      //       ),
                      //       decoration: BoxDecoration(
                      //         border: Border.all(
                      //           width: 3.0,
                      //           color: kPrimaryColor,
                      //         ),
                      //         borderRadius: BorderRadius.circular(23.0),
                      //       ),
                      //       child: ClipRRect(
                      //         borderRadius: BorderRadius.circular(15.0),
                      //         child: Image.asset(
                      //           AssetsPath.image1,
                      //           fit: BoxFit.cover,
                      //           height: 50.0,
                      //           width: widget.size.width / 6,
                      //         ),
                      //       ),
                      //     ),
                      //     const SizedBox(
                      //       height: 5.0,
                      //     ),
                      //     Text(
                      //       'Linda',
                      //       style: TextStyle(
                      //         fontFamily: kDefaultFont,
                      //         fontSize: widget.size.height * 0.014,
                      //         color: kPrimaryColor,
                      //         fontWeight: FontWeight.w400,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // Column(
                      //   children: [
                      //     Container(
                      //       height: 60.0,
                      //       width: widget.size.width / 6,
                      //       padding: const EdgeInsets.symmetric(
                      //         horizontal: 4.0,
                      //         vertical: 3.0,
                      //       ),
                      //       decoration: BoxDecoration(
                      //         border: Border.all(
                      //           width: 3.0,
                      //           color: kPrimaryColor,
                      //         ),
                      //         borderRadius: BorderRadius.circular(23.0),
                      //       ),
                      //       child: ClipRRect(
                      //         borderRadius: BorderRadius.circular(15.0),
                      //         child: Image.asset(
                      //           AssetsPath.image2,
                      //           fit: BoxFit.cover,
                      //           height: 50.0,
                      //           width: widget.size.width / 6,
                      //         ),
                      //       ),
                      //     ),
                      //     const SizedBox(
                      //       height: 5.0,
                      //     ),
                      //     Text(
                      //       'Lade',
                      //       style: TextStyle(
                      //         fontFamily: kDefaultFont,
                      //         fontSize: widget.size.height * 0.014,
                      //         color: kPrimaryColor,
                      //         fontWeight: FontWeight.w400,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // Column(
                      //   children: [
                      //     Container(
                      //       height: 60.0,
                      //       width: widget.size.width / 6,
                      //       padding: const EdgeInsets.symmetric(
                      //         horizontal: 4.0,
                      //         vertical: 3.0,
                      //       ),
                      //       decoration: BoxDecoration(
                      //         border: Border.all(
                      //           width: 3.0,
                      //           color: kPlaceholderColor.withOpacity(0.70),
                      //         ),
                      //         borderRadius: BorderRadius.circular(23.0),
                      //       ),
                      //       child: ClipRRect(
                      //         borderRadius: BorderRadius.circular(15.0),
                      //         child: Image.asset(
                      //           AssetsPath.image1,
                      //           fit: BoxFit.cover,
                      //           height: 50.0,
                      //           width: widget.size.width / 6,
                      //         ),
                      //       ),
                      //     ),
                      //     const SizedBox(
                      //       height: 5.0,
                      //     ),
                      //     Text(
                      //       'Yemi',
                      //       style: TextStyle(
                      //         fontFamily: kDefaultFont,
                      //         fontSize: widget.size.height * 0.014,
                      //         color: kPrimaryColor,
                      //         fontWeight: FontWeight.w400,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // Column(
                      //   children: [
                      //     Container(
                      //       height: 60.0,
                      //       width: widget.size.width / 6,
                      //       padding: const EdgeInsets.symmetric(
                      //         horizontal: 4.0,
                      //         vertical: 3.0,
                      //       ),
                      //       decoration: BoxDecoration(
                      //         border: Border.all(
                      //           width: 3.0,
                      //           color: kPlaceholderColor.withOpacity(0.70),
                      //         ),
                      //         borderRadius: BorderRadius.circular(23.0),
                      //       ),
                      //       child: ClipRRect(
                      //         borderRadius: BorderRadius.circular(15.0),
                      //         child: Image.asset(
                      //           AssetsPath.image2,
                      //           fit: BoxFit.cover,
                      //           height: 50.0,
                      //           width: widget.size.width / 6,
                      //         ),
                      //       ),
                      //     ),
                      //     const SizedBox(
                      //       height: 5.0,
                      //     ),
                      //     Text(
                      //       'Akin',
                      //       style: TextStyle(
                      //         fontFamily: kDefaultFont,
                      //         fontSize: widget.size.height * 0.014,
                      //         color: kPrimaryColor,
                      //         fontWeight: FontWeight.w400,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
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
                  isQwikSale: true,
                  videoUrl: videoUrl,
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
