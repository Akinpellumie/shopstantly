import 'package:face_pile/face_pile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopstantly_app/utils/custom_router.dart';
import 'package:shopstantly_app/views/home/components/qwik_sale_card.dart';
import 'package:shopstantly_app/views/home/components/single_image_card.dart';
import 'package:shopstantly_app/views/home/components/single_video_card.dart';
import 'package:shopstantly_app/popups/auth_pop_up.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/dimensions.dart';
import 'custom_double_grid.dart';
import 'custom_staggered_grid.dart';
import 'image_grid_post.dart';

class SocialCardItem extends StatelessWidget {
  const SocialCardItem({
    Key? key,
    required this.size,
    required List<String> imageUrls,
    this.isVideo = false,
    this.hasMedia = true,
    this.isQwikSale = false,
    this.videoUrl,
  })  : _imageUrls = imageUrls,
        super(key: key);

  final bool isVideo;
  final bool hasMedia;
  final bool isQwikSale;
  final Size size;
  final String? videoUrl;
  final List<String> _imageUrls;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        CustomRouter.nextScreen(context, '/socialDetail');
      },
      child: SizedBox(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 24.0,
                      ),
                      Icon(
                        Icons.cached_outlined,
                        color: kPlaceholderColor,
                        size: size.height * 0.025,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'toyosiolufade reshared +28 others engaged',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontFamily: kDefaultFont,
                          fontSize: size.height * 0.0140,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      AssetsPath.giveaway,
                      height: size.height * 0.025,
                      width: size.height * 0.025,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Image.asset(
                      AssetsPath.deals,
                      height: size.height * 0.025,
                      width: size.height * 0.025,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 2.0,
                          vertical: 2.0,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: kPrimaryColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            AssetsPath.image2,
                            fit: BoxFit.cover,
                            height: 25.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Tolani Favor',
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontFamily: kDefaultFont,
                                  fontSize: size.height * 0.0170,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              const Icon(
                                Icons.verified_user,
                                color: kOrangeColor,
                                size: 15.0,
                              ),
                            ],
                          ),
                          Text(
                            '@tolani_soft',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontFamily: kDefaultFont,
                              fontSize: size.height * 0.0150,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
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
            hasMedia
                ? const SizedBox(
                    height: 10.0,
                  )
                : const SizedBox(
                    height: 0.0,
                  ),
            hasMedia
                ? SizedBox(
                    width: size.width,
                    child: displayWidget(
                      isVideo,
                      videoUrl,
                      size,
                      _imageUrls,
                      isQwikSale,
                    ),
                  )
                : const SizedBox(
                    height: 0.0,
                  ),
            isQwikSale
                ? const SizedBox(
                    height: 0.0,
                  )
                : Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consec- tetur adipiscing elit.',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.02,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
            isQwikSale
                ? SizedBox(
                    width: size.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // SizedBox(
                        //   width: size.width / 5 - 25,
                        //   child: IconButton(
                        //     alignment: Alignment.centerLeft,
                        //     padding: EdgeInsets.zero,
                        //     onPressed: () => {},
                        //     icon: Icon(
                        //       CupertinoIcons.cart_badge_plus,
                        //       color: kPlaceholderColor,
                        //       size: size.height * 0.040,
                        //     ),
                        //   ),
                        // ),
                        // SizedBox(
                        //   width: size.width / 5 - 25,
                        //   child: IconButton(
                        //     alignment: Alignment.centerLeft,
                        //     padding: EdgeInsets.zero,
                        //     onPressed: () => {},
                        //     icon: Icon(
                        //       CupertinoIcons.calendar_badge_plus,
                        //       color: kPlaceholderColor,
                        //       size: size.height * 0.032,
                        //     ),
                        //   ),
                        // ),
                        SizedBox(
                          width: size.width / 5 - 8,
                          child: IconButton(
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.zero,
                            icon: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  CupertinoIcons.cart_badge_plus,
                                  color: kPlaceholderColor,
                                  size: size.height * 0.04,
                                ),
                                const SizedBox(
                                  width: 3.0,
                                ),
                                Text(
                                  '128',
                                  style: TextStyle(
                                    fontFamily: kDefaultFont,
                                    fontSize: size.height * 0.0170,
                                    fontWeight: FontWeight.w500,
                                    color: kBackgroundColor,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              Future.delayed(Duration.zero, () {
                                AuthPopUp.authPopupModal(
                                  context,
                                );
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: size.width / 5 - 8,
                          child: IconButton(
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.zero,
                            icon: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  CupertinoIcons.calendar_badge_plus,
                                  color: kPlaceholderColor,
                                  size: size.height * 0.04,
                                ),
                                const SizedBox(
                                  width: 3.0,
                                ),
                                Text(
                                  '128',
                                  style: TextStyle(
                                    fontFamily: kDefaultFont,
                                    fontSize: size.height * 0.0170,
                                    fontWeight: FontWeight.w500,
                                    color: kBackgroundColor,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              Future.delayed(Duration.zero, () {
                                AuthPopUp.authPopupModal(
                                  context,
                                );
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: size.width / 5 - 8,
                          child: IconButton(
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.zero,
                            icon: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  CupertinoIcons.heart,
                                  color: kPlaceholderColor,
                                  size: size.height * 0.04,
                                ),
                                const SizedBox(
                                  width: 3.0,
                                ),
                                Text(
                                  '128',
                                  style: TextStyle(
                                    fontFamily: kDefaultFont,
                                    fontSize: size.height * 0.0170,
                                    fontWeight: FontWeight.w500,
                                    color: kPrimaryTextColor,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              Future.delayed(Duration.zero, () {
                                AuthPopUp.authPopupModal(
                                  context,
                                );
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: size.width / 5 - 8,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            icon: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  CupertinoIcons.chat_bubble,
                                  color: kPlaceholderColor,
                                  size: size.height * 0.035,
                                ),
                                const SizedBox(
                                  width: 7.0,
                                ),
                                Text(
                                  '128',
                                  style: TextStyle(
                                    fontFamily: kDefaultFont,
                                    fontSize: size.height * 0.0170,
                                    fontWeight: FontWeight.w500,
                                    color: kPrimaryTextColor,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              CustomRouter.nextScreen(
                                  context, '/commentScreen');
                              // Future.delayed(Duration.zero, () {
                              //   AuthPopUp.authPopupModal(
                              //     context,
                              //   );
                              // });
                            },
                          ),
                        ),
                        SizedBox(
                          width: size.width / 5 - 8,
                          child: IconButton(
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.zero,
                            onPressed: () => {},
                            icon: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.cached_outlined,
                                  color: kPlaceholderColor,
                                  size: size.height * 0.035,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  '128',
                                  style: TextStyle(
                                    fontFamily: kDefaultFont,
                                    fontSize: size.height * 0.0170,
                                    fontWeight: FontWeight.w500,
                                    color: kPrimaryTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : SizedBox(
                    width: size.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width / 4.8,
                          child: IconButton(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.zero,
                            icon: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  CupertinoIcons.heart,
                                  color: kPlaceholderColor,
                                  size: size.height * 0.04,
                                ),
                                const SizedBox(
                                  width: 3.0,
                                ),
                                Text(
                                  '128',
                                  style: TextStyle(
                                    fontFamily: kDefaultFont,
                                    fontSize: size.height * 0.0170,
                                    fontWeight: FontWeight.w500,
                                    color: kPrimaryTextColor,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              Future.delayed(Duration.zero, () {
                                AuthPopUp.authPopupModal(
                                  context,
                                );
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: size.width / 4.8,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            icon: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  CupertinoIcons.chat_bubble,
                                  color: kPlaceholderColor,
                                  size: size.height * 0.035,
                                ),
                                const SizedBox(
                                  width: 7.0,
                                ),
                                Text(
                                  '128',
                                  style: TextStyle(
                                    fontFamily: kDefaultFont,
                                    fontSize: size.height * 0.0170,
                                    fontWeight: FontWeight.w500,
                                    color: kPrimaryTextColor,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              CustomRouter.nextScreen(
                                  context, '/commentScreen');
                              // Future.delayed(Duration.zero, () {
                              //   AuthPopUp.authPopupModal(
                              //     context,
                              //   );
                              // });
                            },
                          ),
                        ),
                        SizedBox(
                          width: size.width / 4.8,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () => {},
                            icon: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.cached_outlined,
                                  color: kPlaceholderColor,
                                  size: size.height * 0.035,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  '128',
                                  style: TextStyle(
                                    fontFamily: kDefaultFont,
                                    fontSize: size.height * 0.0170,
                                    fontWeight: FontWeight.w500,
                                    color: kPrimaryTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width / 5 - 25,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () => {},
                            icon: Icon(
                              Icons.share_outlined,
                              color: kPlaceholderColor,
                              size: size.height * 0.030,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width / 5 - 25,
                          child: IconButton(
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.zero,
                            onPressed: () => {},
                            icon: Icon(
                              CupertinoIcons.bookmark,
                              color: kPlaceholderColor,
                              size: size.height * 0.032,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
            RichText(
              text: TextSpan(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nisi tortor, molestie sed convallis sit amet, ultrices et enim. In ut maximus augue, quis venenatis risus.. ',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: size.height * 0.019,
                  fontWeight: FontWeight.w400,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Read more',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: size.height * 0.0150,
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
      ),
    );
  }

  Widget displayWidget(
    bool isVideo,
    String? videoUrl,
    Size _size,
    List<String> _imageUrls,
    bool isQwik,
  ) {
    if (_imageUrls.length == 1 && !isVideo && !isQwik) {
      return SingleImageCard(
        imageUrl: _imageUrls[0],
        size: _size,
      );
    }
    if (_imageUrls.length == 2 && !isVideo && !isQwik) {
      return CustomDoubleGrid(imageUrls: _imageUrls);
    }
    if (_imageUrls.length == 3 && !isVideo && !isQwik) {
      return CustomStaggeredGrid(imageUrls: _imageUrls);
    }
    if (_imageUrls.length == 4 && !isVideo && !isQwik) {
      return ImageGridPost(size: _size, imageUrls: _imageUrls);
    }
    if (isVideo && videoUrl!.isNotEmpty && !isQwik) {
      return SingleVideoCard(size: size, videoUrl: videoUrl);
    }
    if (isQwik && _imageUrls.isNotEmpty && !isVideo) {
      return QwikSaleCard(size: size, imageUrls: _imageUrls);
    } else {
      return SingleImageCard(
        imageUrl: _imageUrls[0],
        size: _size,
      );
    }
  }
}
