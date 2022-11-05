import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopstantly_app/utils/custom_router.dart';
import 'package:shopstantly_app/views/accounts/personal/widgets/album_widget.dart';
import 'package:shopstantly_app/views/accounts/personal/widgets/review_widget.dart';

import '../../../../../data/profile_text_menus.dart';
import '../../../../../models/common/text_menu.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/assets_path.dart';
import '../../../../../utils/dimensions.dart';
import '../../../../../widgets/custom_three_tab.dart';
import '../../../components/user_profile_widget.dart';
import '../../components/follower_counter.dart';
import '../../components/mini_button.dart';
import '../../widgets/about_us_widget.dart';
import 'package:material_symbol_icons/material_symbol.dart';
import 'package:material_symbol_icons/widgets/material_symbol_icon.dart';

class OwnerInfoView extends StatefulWidget {
  const OwnerInfoView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<OwnerInfoView> createState() => _OwnerInfoViewState();
}

class _OwnerInfoViewState extends State<OwnerInfoView> {
  int threeTabIndex = 0;
  List<TextMenu> infoMenus = ProfileTextMenus.infoTextMenus;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: CustomScrollView(
        controller: ScrollController(
          keepScrollOffset: true,
        ),
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Column(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 5.0,
                        ),
                        SizedBox(
                          height: widget.size.height * 0.25,
                          width: widget.size.width,
                          child: ClipRect(
                            child: CachedNetworkImage(
                              imageUrl: AssetsPath.profileImageUrl,
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 35.0,
                                      height: 35.0,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 2.0,
                                        vertical: 2.0,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: kPrimaryColor,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          AssetsPath.image2,
                                          fit: BoxFit.cover,
                                          height: 27.0,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Tolani Favor',
                                              style: TextStyle(
                                                color: kPrimaryColor,
                                                fontFamily: kDefaultFont,
                                                fontSize:
                                                    widget.size.height * 0.0170,
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
                                            fontSize:
                                                widget.size.height * 0.0150,
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
                                  IconButton(
                                    onPressed: () async {
                                      // await MoreOptionModal.showMoreOptionModal(
                                      //     context);
                                    },
                                    padding: const EdgeInsets.all(4.0),
                                    icon: Icon(
                                      Icons.drive_file_rename_outline,
                                      color: kPrimaryColor,
                                      size: widget.size.height * 0.035,
                                    ),
                                  ),
                                  // const SizedBox(
                                  //   width: 5.0,
                                  // ),
                                  IconButton(
                                    onPressed: () async {
                                      // await MoreOptionModal.showMoreOptionModal(
                                      //     context);
                                    },
                                    padding: const EdgeInsets.all(4.0),
                                    icon: Icon(
                                      Icons.dashboard_outlined,
                                      color: kPrimaryColor,
                                      size: widget.size.height * 0.035,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FollowerCounter(
                                size: widget.size,
                                title: 'Following',
                                count: '350',
                                hasIcon: false,
                              ),
                              // const SizedBox(width: 10.0,),
                              Container(
                                // margin:
                                //     const EdgeInsets.symmetric(horizontal: 10.0),
                                height: 40.0,
                                width: 1.0,
                                color: kLineColor,
                              ),
                              FollowerCounter(
                                size: widget.size,
                                title: 'Followers',
                                count: '346',
                                hasIcon: false,
                              ),
                              Container(
                                // margin:
                                //     const EdgeInsets.symmetric(horizontal: 10.0),
                                height: 40.0,
                                width: 1.0,
                                color: kLineColor,
                              ),
                              FollowerCounter(
                                size: widget.size,
                                title: 'Ratings',
                                count: '2',
                                hasIcon: true,
                                icon: SvgPicture.asset(
                                  AssetsPath.starFillIcon,
                                  color: Colors.amber,
                                  width: widget.size.height * 0.0190,
                                  height: widget.size.height * 0.0190,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 20.0,
                        width: widget.size.width,
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Center(
                          child: ListView.builder(
                            physics: const AlwaysScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: infoMenus.length,
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    threeTabIndex = index;
                                    for (int i = 0; i < infoMenus.length; i++) {
                                      index == i
                                          ? infoMenus[i].active = true
                                          : infoMenus[i].active = false;
                                    }
                                  });
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(
                                    right: 25.0,
                                  ),
                                  child: Text(
                                    infoMenus[index].title,
                                    style: TextStyle(
                                      color: infoMenus[index].active
                                          ? kPrimaryTextColor
                                          : kPlaceholderColor,
                                      fontSize: widget.size.height * 0.017,
                                      fontWeight: infoMenus[index].active
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
                        height: 5.0,
                      ),
                      getBottomView(widget.size),
                    ],
                  ),
                  //AboutUsWidget(size: widget.size),
                ],
              ),
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }

  Widget getBottomView(Size size) {
    switch (threeTabIndex) {
      case 0:
        return AboutUsWidget(size: size);
      case 1:
        return ReviewWidget(size: size);
      case 2:
        return AlbumWidget(size: size);
      default:
        return AboutUsWidget(size: size);
    }
  }
}
