import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopstantly_app/utils/custom_router.dart';
import 'package:shopstantly_app/views/accounts/personal/widgets/album_widget.dart';
import 'package:shopstantly_app/views/accounts/personal/widgets/review_widget.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/assets_path.dart';
import '../../../../../utils/dimensions.dart';
import '../../../../../widgets/custom_three_tab.dart';
import '../../../components/user_profile_widget.dart';
import '../../components/follower_counter.dart';
import '../../components/mini_button.dart';
import '../../widgets/about_us_widget.dart';

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
                          height: 10.0,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Stack(
                            alignment: Alignment.center,
                            clipBehavior: Clip.none,
                            children: <Widget>[
                              // background image and bottom contents
                              Container(
                                height: 150.0,
                                width: widget.size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: kProfileBannerColor,
                                  border: Border.all(
                                      color: Colors.white, width: 5.0),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(13.0),
                                  child: Image.asset(
                                    AssetsPath.image2,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                top:
                                    120.0, // (background container size) - (circle height / 2)
                                left: 20.0,
                                child: Container(
                                  height: 80.0,
                                  width: 80.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kProfileBannerColor,
                                    border: Border.all(
                                        color: Colors.white, width: 5.0),
                                  ),
                                  child: ClipOval(
                                    child: Image.asset(
                                      AssetsPath.image2,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 5.0, left: 130.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Dotun Felixx',
                                    style: TextStyle(
                                      fontSize: widget.size.height * 0.019,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: kDefaultFont,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  Text(
                                    '@layi',
                                    style: TextStyle(
                                      fontSize: widget.size.height * 0.015,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: kDefaultFont,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MiniButton(
                              width: widget.size.width / 3,
                              size: widget.size,
                              iconPath: AssetsPath.walletIcon,
                              title: 'Edit Profile',
                              onBtnPressed: () {},
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            MiniButton(
                              width: widget.size.width / 3,
                              size: widget.size,
                              iconPath: AssetsPath.walletIcon,
                              title: 'Wallet',
                              onBtnPressed: () => CustomRouter.nextScreen(
                                  context, '/setWalletPin'),
                            ),
                          ],
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
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 10.0,
                        ),
                        width: widget.size.width,
                        margin: const EdgeInsets.only(bottom: 10.0),
                        color: kBackgroundColor,
                        child: CustomThreeTab(
                          size: widget.size,
                          firstTabText: 'About',
                          secondTabText: 'Reviews',
                          thirdTabText: 'Album',
                          callback: (val) => setState(
                            () {
                              threeTabIndex = val;
                              // updateViewOnTabChange(
                              //     widget.customerViewModel, val, widget.caller);
                            },
                          ),
                        ),
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
