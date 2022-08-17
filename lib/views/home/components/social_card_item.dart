import 'package:face_pile/face_pile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/custom_router.dart';
import 'package:shopstantly_app/views/home/components/single_image_card.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/dimensions.dart';
import 'custom_double_grid.dart';
import 'custom_staggered_grid.dart';
import 'image_grid_post.dart';

class SocialCardItem extends StatelessWidget {
  const SocialCardItem({
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
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                              AssetsPath.image2,
                              fit: BoxFit.cover,
                            )),
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
                                  fontSize: size.height * 0.0150,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              const Icon(
                                Icons.check_circle,
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
                              fontSize: size.height * 0.0130,
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
            SizedBox(
              width: double.infinity,
              child: displayWidget(3, size, _imageUrls),
            ),
            SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  IconButton(
                    color: kPlaceholderColor,
                    icon: const Icon(
                      CupertinoIcons.heart,
                      color: kPlaceholderColor,
                    ),
                    iconSize: size.height * 0.030,
                    onPressed: () =>
                        CustomRouter.nextScreen(context, '/commentScreen'),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 0.0,
                      vertical: 0.0,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  IconButton(
                    color: kPlaceholderColor,
                    icon: const Icon(
                      Icons.share_outlined,
                      color: kPlaceholderColor,
                    ),
                    iconSize: size.height * 0.030,
                    onPressed: () {},
                    padding: const EdgeInsets.symmetric(
                      horizontal: 0.0,
                      vertical: 0.0,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  IconButton(
                    color: kPlaceholderColor,
                    icon: const Icon(
                      CupertinoIcons.bookmark,
                      color: kPlaceholderColor,
                    ),
                    iconSize: size.height * 0.030,
                    onPressed: () {},
                    padding: const EdgeInsets.symmetric(
                      horizontal: 0.0,
                      vertical: 0.0,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
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
                          fontSize: size.height * 0.0130,
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
                          fontSize: size.height * 0.0130,
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
                              fontSize: size.height * 0.0130,
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
}
