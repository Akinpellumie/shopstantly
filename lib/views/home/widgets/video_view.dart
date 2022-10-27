import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopstantly_app/data/video_filter_menus.dart';

import '../../../data/trend_text_menus.dart';
import '../../../models/common/text_menu.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/custom_router.dart';
import '../../../utils/dimensions.dart';

class VideoView extends StatefulWidget {
  final Size size;
  const VideoView({Key? key, required this.size}) : super(key: key);

  @override
  State<VideoView> createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  List<TextMenu> carouselMenus = VideoFilterMenus.carouselVideoMenus;

  List<TextMenu> ssTvMenus = VideoFilterMenus.ssTvMenus;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          margin: const EdgeInsets.only(bottom: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 9,
                child: Container(
                  //margin: const EdgeInsets.only(bo: 20.0),
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  height: 45.0,
                  decoration: BoxDecoration(
                    color: kPlaceholderColor.withOpacity(0.10),
                    borderRadius: BorderRadius.circular(27.5),
                  ),
                  child: Center(
                    child: TextFormField(
                      onChanged: (value) {},
                      maxLines: null,
                      textAlignVertical: TextAlignVertical.center,
                      //maxLength: 100,
                      textCapitalization: TextCapitalization.sentences,
                      style: TextStyle(
                        color: kPrimaryTextColor,
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.019,
                        fontWeight: FontWeight.normal,
                      ),
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: kPlaceholderColor.withOpacity(0.65),
                        ),
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.filter_list,
                    color: kPlaceholderColor,
                    size: size.height * 0.035,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Most Watched',
                  style: TextStyle(
                    color: kPrimaryTextColor,
                    fontSize: size.height * 0.018,
                    fontFamily: kDefaultFont,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                'view all',
                style: TextStyle(
                  color: kPrimaryTextColor.withOpacity(0.45),
                  fontSize: size.height * 0.015,
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
          height: size.height * 0.32,
          padding: const EdgeInsets.only(left: 20.0),
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 4,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Container(
                //height: size.height * 0.25,
                width: size.width * 0.70,
                margin: const EdgeInsets.only(right: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: size.width * 0.65,
                      height: size.height * 0.20,
                      //margin: const EdgeInsets.only(bottom: 10.0),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://images.unsplash.com/photo-1587502537745-84b86da1204f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8b2NlYW58ZW58MHx8MHx8&w=1000&q=80',
                          fit: BoxFit.cover,
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) => Center(
                            child: SizedBox(
                              height: 40.0,
                              width: 40.0,
                              child: CircularProgressIndicator(
                                color: kPrimaryColor,
                                value: downloadProgress.progress,
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) => Container(
                            padding: const EdgeInsets.all(5.0),
                            child: const Icon(
                              Icons.image_not_supported_outlined,
                              color: kIconBgColor,
                              size: 80.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '30k views',
                          style: TextStyle(
                            color: kPlaceholderColor,
                            fontWeight: FontWeight.w300,
                            fontSize: size.height * 0.014,
                            fontFamily: kDefaultFont,
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          height: 5.0,
                          width: 5.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPlaceholderColor,
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          '4mins ago',
                          style: TextStyle(
                            color: kPlaceholderColor,
                            fontWeight: FontWeight.w300,
                            fontSize: size.height * 0.014,
                            fontFamily: kDefaultFont,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Climate change: Arctic warming linked to colder winters',
                      style: TextStyle(
                        color: kPrimaryTextColor,
                        fontWeight: FontWeight.w500,
                        fontSize: size.height * 0.017,
                        fontFamily: kDefaultFont,
                      ),
                    ),
                    Text(
                      'Burna Boy',
                      style: TextStyle(
                        color: kPrimaryTextColor,
                        fontWeight: FontWeight.w300,
                        fontSize: size.height * 0.014,
                        fontFamily: kDefaultFont,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 25.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Trending Videos',
                  style: TextStyle(
                    color: kPrimaryTextColor,
                    fontSize: size.height * 0.018,
                    fontFamily: kDefaultFont,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                'edit interests',
                style: TextStyle(
                  color: kPrimaryTextColor.withOpacity(0.45),
                  fontSize: size.height * 0.015,
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
          alignment: Alignment.center,
          height: 20.0,
          width: size.width,
          padding: const EdgeInsets.only(left: 20.0),
          child: Center(
            child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: ssTvMenus.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      for (int i = 0; i < ssTvMenus.length; i++) {
                        index == i
                            ? ssTvMenus[i].active = true
                            : ssTvMenus[i].active = false;
                      }
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                      right: 25.0,
                    ),
                    child: Text(
                      ssTvMenus[index].title,
                      style: TextStyle(
                        color: ssTvMenus[index].active
                            ? kPrimaryTextColor
                            : kPlaceholderColor,
                        fontSize: size.height * 0.017,
                        fontWeight: ssTvMenus[index].active
                            ? FontWeight.w600
                            : FontWeight.normal,
                        fontFamily: kDefaultFont,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 15.0,
          ),
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 4,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return SizedBox(
                width: size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.30,
                      height: 100.0,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.unsplash.com/photo-1587502537745-84b86da1204f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8b2NlYW58ZW58MHx8MHx8&w=1000&q=80',
                              fit: BoxFit.cover,
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) => Center(
                                child: SizedBox(
                                  height: 40.0,
                                  width: 40.0,
                                  child: CircularProgressIndicator(
                                    color: kPrimaryColor,
                                    value: downloadProgress.progress,
                                  ),
                                ),
                              ),
                              errorWidget: (context, url, error) => Container(
                                padding: const EdgeInsets.all(5.0),
                                child: const Icon(
                                  Icons.image_not_supported_outlined,
                                  color: kIconBgColor,
                                  size: 80.0,
                                ),
                              ),
                            ),
//  Image.network(
//                               'https://images.unsplash.com/photo-1587502537745-84b86da1204f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8b2NlYW58ZW58MHx8MHx8&w=1000&q=80',
//                               fit: BoxFit.cover,
//                             ),
                          ),
                          Positioned(
                            bottom: 5.0,
                            right: 10.0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5.0,
                                vertical: 3.0,
                              ),
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Text(
                                "6:30",
                                style: TextStyle(
                                  color: kWhiteColor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: size.height * 0.017,
                                  fontFamily: kDefaultFont,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "2021's most brilliant horror movie",
                            style: TextStyle(
                              color: kPrimaryTextColor,
                              fontWeight: FontWeight.w500,
                              fontSize: size.height * 0.019,
                              fontFamily: kDefaultFont,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Text(
                                '30k views',
                                style: TextStyle(
                                  color: kPlaceholderColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: size.height * 0.015,
                                  fontFamily: kDefaultFont,
                                ),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Container(
                                height: 5.0,
                                width: 5.0,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kPlaceholderColor,
                                ),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                '3days ago',
                                style: TextStyle(
                                  color: kPlaceholderColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: size.height * 0.015,
                                  fontFamily: kDefaultFont,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  CupertinoIcons.heart,
                                  color: kPlaceholderColor,
                                  size: size.height * 0.03,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              GestureDetector(
                                onTap: () => CustomRouter.nextScreen(
                                    context, '/commentScreen'),
                                child: Icon(
                                  CupertinoIcons.chat_bubble,
                                  color: kPlaceholderColor,
                                  size: size.height * 0.03,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              GestureDetector(
                                onTap: () => {},
                                child: Icon(
                                  Icons.share_outlined,
                                  color: kPlaceholderColor,
                                  size: size.height * 0.03,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              GestureDetector(
                                onTap: () => {},
                                child: Icon(
                                  CupertinoIcons.bookmark,
                                  color: kPlaceholderColor,
                                  size: size.height * 0.03,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 10.0,
                width: size.width,
              );
            },
          ),
        ),
      ],
    );
  }
}
