import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/assets_path.dart';
import '../../../../../utils/dimensions.dart';
import '../../../components/circle_icon_button.dart';
import '../../../components/user_profile_widget.dart';
import '../../../personal/components/follower_counter.dart';
import '../../../personal/components/mini_button.dart';

class UserInfoView extends StatefulWidget {
  const UserInfoView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<UserInfoView> createState() => _UserInfoViewState();
}

class _UserInfoViewState extends State<UserInfoView> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
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
                            border: Border.all(color: Colors.white, width: 5.0),
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
                              border:
                                  Border.all(color: Colors.white, width: 5.0),
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
                    Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(top: 5.0, left: 105.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Akinpelumi Akinlade',
                                style: TextStyle(
                                  fontSize: widget.size.height * 0.0120,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: kDefaultFont,
                                  color: kPrimaryColor,
                                ),
                              ),
                              Text(
                                '@layi',
                                style: TextStyle(
                                  fontSize: widget.size.height * 0.0125,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: kDefaultFont,
                                  color: kPrimaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          margin: const EdgeInsets.only(top: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleIconButton(
                                size: widget.size,
                                iconData: CupertinoIcons.chat_bubble_fill,
                                iconColor: kWhiteColor,
                                iconSize: 13.0,
                                bgColor: kPrimaryColor,
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              CircleIconButton(
                                size: widget.size,
                                iconData: CupertinoIcons.video_camera_solid,
                                iconColor: kWhiteColor,
                                iconSize: 13.0,
                                bgColor: kPrimaryColor,
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              CircleIconButton(
                                size: widget.size,
                                iconData: CupertinoIcons.phone_solid,
                                iconColor: kWhiteColor,
                                iconSize: 13.0,
                                bgColor: kPrimaryColor,
                              ),
                              // MiniButton(
                              //   width: size.width * 0.200,
                              //   size: size,
                              //   iconPath: AssetsPath.followIcon,
                              //   title: 'Follow',
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FollowerCounter(
                            size: widget.size,
                            title: 'Following',
                            count: '250',
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
                            title: 'Followers',
                            count: '146',
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
                            title: 'Events',
                            count: '4',
                          ),
                          Container(
                            // margin:
                            //     const EdgeInsets.symmetric(horizontal: 10.0),
                            height: 40.0,
                            width: 1.0,
                            color: kLineColor,
                          ),
                          MiniButton(
                            width: widget.size.width / 4,
                            size: widget.size,
                            iconPath: AssetsPath.followIcon,
                            title: 'Follow',
                            onBtnPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'About Me',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontFamily: kDefaultFont,
                        fontWeight: FontWeight.w500,
                        fontSize: widget.size.height * 0.0200,
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text:
                          'Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. ',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontFamily: kDefaultFont,
                        fontWeight: FontWeight.normal,
                        fontSize: widget.size.height * 0.0150,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Read More.',
                          style: TextStyle(
                            color: kPurpleColor,
                            fontFamily: kDefaultFont,
                            fontWeight: FontWeight.w600,
                            fontSize: widget.size.height * 0.0160,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Management (10)',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontFamily: kDefaultFont,
                        fontWeight: FontWeight.w500,
                        fontSize: widget.size.height * 0.0200,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    CupertinoIcons.search,
                    color: kLightGrayColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  UserProfileWidget(
                    size: widget.size,
                    imagePath: AssetsPath.profileDp,
                    firstname: 'Lade',
                    lastname: 'Ajala',
                    role: 'Designer',
                    height: 80.0,
                  ),
                  UserProfileWidget(
                    size: widget.size,
                    imagePath: AssetsPath.profileDp,
                    firstname: 'Akinpelumi',
                    lastname: 'Ade',
                    role: 'Developer',
                    height: 80.0,
                  ),
                  UserProfileWidget(
                    size: widget.size,
                    imagePath: AssetsPath.profileDp,
                    firstname: 'Emmanuel',
                    lastname: 'Ade',
                    role: 'CTO',
                    height: 80.0,
                  ),
                  UserProfileWidget(
                    size: widget.size,
                    imagePath: AssetsPath.profileDp,
                    firstname: 'Tosin',
                    lastname: 'Ajewole',
                    role: 'Designer',
                    height: 80.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
