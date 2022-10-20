import 'package:face_pile/face_pile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/custom_router.dart';
import 'package:shopstantly_app/views/home/components/single_image_card.dart';
import 'package:shopstantly_app/views/home/components/single_video_card.dart';
import 'package:shopstantly_app/views/popups/auth_pop_up.dart';
import 'package:video_player/video_player.dart';

import '../../../components/video_card.dart';
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
    this.videoUrl,
  })  : _imageUrls = imageUrls,
        super(key: key);

  final bool isVideo;
  final bool hasMedia;
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
                Icon(
                  Icons.cached_outlined,
                  color: kPlaceholderColor,
                  size: size.height * 0.025,
                ),
                const SizedBox(
                  width: 5.0,
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
                                'Linda Flora',
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
                            'Ibadan, Nigeria',
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
            const SizedBox(
              height: 13.0,
            ),
            hasMedia
                ? SizedBox(
                    width: size.width,
                    child: displayWidget(isVideo, videoUrl, size, _imageUrls),
                  )
                : const SizedBox(
                    height: 5.0,
                  ),
            const SizedBox(
              height: 10.0,
            ),
            Align(
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
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      CupertinoIcons.heart,
                      color: kPlaceholderColor,
                      size: size.height * 0.04,
                    ),
                    onPressed: () {
                      Future.delayed(Duration.zero, () {
                        AuthPopUp.authPopupModal(
                          context,
                        );
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      CupertinoIcons.chat_bubble,
                      color: kPlaceholderColor,
                      size: size.height * 0.04,
                    ),
                    onPressed: () {
                      CustomRouter.nextScreen(context, '/commentScreen');
                      // Future.delayed(Duration.zero, () {
                      //   AuthPopUp.authPopupModal(
                      //     context,
                      //   );
                      // });
                    },
                  ),
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      Icons.cached_outlined,
                      color: kPlaceholderColor,
                      size: size.height * 0.04,
                    ),
                  ),
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      Icons.share_outlined,
                      color: kPlaceholderColor,
                      size: size.height * 0.04,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      CupertinoIcons.bookmark,
                      color: kPlaceholderColor,
                      size: size.height * 0.04,
                    ),
                  ),
                ],
              ),
              // const SizedBox(
              //   width: 10.0,
              // ),
              // Flexible(
              //   child: Row(
              //     children: [
              //       FacePile(
              //         radius: 10,
              //         space: 12,
              //         images: const [
              //           NetworkImage("https://i.pravatar.cc/300?img=1"),
              //           NetworkImage("https://i.pravatar.cc/300?img=2"),
              //           NetworkImage("https://i.pravatar.cc/300?img=3"),
              //         ],
              //         border: Border.all(color: kWhiteColor, width: 2),
              //       ),
              //       const SizedBox(
              //         width: 5.0,
              //       ),
              //       Flexible(
              //         child: Text(
              //           '+28 others engaged this post',
              //           style: TextStyle(
              //             fontFamily: kDefaultFont,
              //             fontSize: size.height * 0.0130,
              //             fontWeight: FontWeight.normal,
              //             color: kPlaceholderColor.withOpacity(0.75),
              //           ),
              //           overflow: TextOverflow.ellipsis,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
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
                  fontSize: size.height * 0.0140,
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
      bool isVideo, String? videoUrl, Size _size, List<String> _imageUrls) {
    if (_imageUrls.length == 1 && !isVideo) {
      return SingleImageCard(
        imageUrl: _imageUrls[0],
        size: _size,
      );
    }
    if (_imageUrls.length == 2 && !isVideo) {
      return CustomDoubleGrid(imageUrls: _imageUrls);
    }
    if (_imageUrls.length == 3 && !isVideo) {
      return CustomStaggeredGrid(imageUrls: _imageUrls);
    }
    if (_imageUrls.length == 4 && !isVideo) {
      return ImageGridPost(size: _size, imageUrls: _imageUrls);
    }
    if (isVideo && videoUrl!.isNotEmpty) {
      return SingleVideoCard(size: size, videoUrl: videoUrl);
    } else {
      return SingleImageCard(
        imageUrl: _imageUrls[0],
        size: _size,
      );
    }
  }
}
