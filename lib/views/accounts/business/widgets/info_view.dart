import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../../helpers/theme_helper.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/assets_path.dart';
import '../../../../utils/dimensions.dart';
import '../../components/circle_icon_button.dart';
import '../../components/comment_widget.dart';
import '../../components/user_profile_widget.dart';
import '../../personal/components/follower_counter.dart';
import '../../personal/components/mini_button.dart';

class InfoView extends StatelessWidget {
  const InfoView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

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
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: kProfileBannerColor,
                            border: Border.all(color: Colors.white, width: 5.0),
                          ),
                          child: const Center(
                            child: Icon(
                              CupertinoIcons.cloud_download,
                              color: kPlaceholderColor,
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
                            child: Container(
                              margin: const EdgeInsets.only(top: 15.0),
                              child: const Center(
                                child: Icon(
                                  CupertinoIcons.cloud_download,
                                  color: kPlaceholderColor,
                                ),
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
                                  fontSize: size.height * 0.0120,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: kDefaultFont,
                                  color: kPrimaryColor,
                                ),
                              ),
                              Text(
                                '@layi',
                                style: TextStyle(
                                  fontSize: size.height * 0.0125,
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
                                size: size,
                                iconData: CupertinoIcons.chat_bubble_fill,
                                iconColor: kWhiteColor,
                                iconSize: 15.0,
                                bgColor: kPrimaryColor,
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              CircleIconButton(
                                size: size,
                                iconData: CupertinoIcons.video_camera_solid,
                                iconColor: kWhiteColor,
                                iconSize: 15.0,
                                bgColor: kPrimaryColor,
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              CircleIconButton(
                                size: size,
                                iconData: CupertinoIcons.phone_solid,
                                iconColor: kWhiteColor,
                                iconSize: 15.0,
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
                            size: size,
                            title: 'Following',
                            count: '250',
                          ),
                          Container(
                            // margin:
                            //     const EdgeInsets.symmetric(horizontal: 10.0),
                            height: 40.0,
                            width: 2.0,
                            color: kLineColor,
                          ),
                          FollowerCounter(
                            size: size,
                            title: 'Followers',
                            count: '146',
                          ),
                          Container(
                            // margin:
                            //     const EdgeInsets.symmetric(horizontal: 10.0),
                            height: 40.0,
                            width: 2.0,
                            color: kLineColor,
                          ),
                          FollowerCounter(
                            size: size,
                            title: 'Events',
                            count: '4',
                          ),
                          Container(
                            // margin:
                            //     const EdgeInsets.symmetric(horizontal: 10.0),
                            height: 40.0,
                            width: 2.0,
                            color: kLineColor,
                          ),
                          MiniButton(
                            width: size.width * 0.200,
                            size: size,
                            iconPath: AssetsPath.followIcon,
                            title: 'Follow',
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
                        fontSize: size.height * 0.0200,
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
                        fontSize: size.height * 0.0150,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Read More.',
                          style: TextStyle(
                            color: kPurpleColor,
                            fontFamily: kDefaultFont,
                            fontWeight: FontWeight.w600,
                            fontSize: size.height * 0.0160,
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
                      'Executive (10)',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontFamily: kDefaultFont,
                        fontWeight: FontWeight.w500,
                        fontSize: size.height * 0.0200,
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
                    size: size,
                    imagePath: AssetsPath.profileDp,
                    firstname: 'Lade',
                    lastname: 'Ajala',
                    role: 'Designer',
                    height: 80.0,
                  ),
                  UserProfileWidget(
                    size: size,
                    imagePath: AssetsPath.profileDp,
                    firstname: 'Akinpelumi',
                    lastname: 'Ade',
                    role: 'Developer',
                    height: 80.0,
                  ),
                  UserProfileWidget(
                    size: size,
                    imagePath: AssetsPath.profileDp,
                    firstname: 'Emmanuel',
                    lastname: 'Ade',
                    role: 'CTO',
                    height: 80.0,
                  ),
                  UserProfileWidget(
                    size: size,
                    imagePath: AssetsPath.profileDp,
                    firstname: 'Tosin',
                    lastname: 'Ajewole',
                    role: 'Designer',
                    height: 80.0,
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: kPostEntryBgColor,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        width: 1.0,
                        color: kLightGrayColor,
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          child: Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kProfileBannerColor,
                              border:
                                  Border.all(color: Colors.white, width: 1.0),
                            ),
                            child: ClipOval(
                              child: Image.asset(AssetsPath.profileDp),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            //initialValue: initialUser,
                            //readOnly: _loginViewModel.loggingIn,
                            decoration: ThemeHelper().postInputDecoration(
                              ' Comment',
                              'Write comment',
                              false,
                              Colors.transparent,
                            ),
                            validator: (v) {
                              if (!RequiredValidator(
                                errorText: '',
                              ).isValid(v)) {
                                // _loginViewModel.setError(
                                //   "User ID",
                                //   'Enter a valid user ID',
                                // );
                              } else {
                                //_loginViewModel.removeError("userId");
                              }
                              return null;
                            },
                            //controller: _loginViewModel.userIdController,
                            keyboardType: TextInputType.text,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CommentWidget(
              size: size,
              name: 'Angel Lukaku',
              desc:
                  'Cinemas is the ultimate experience to see new movies in Gold Class or Vmax. Find a cinema near you.',
              imagePath: AssetsPath.imageDp,
              date: '26 Feb',
            ),
            CommentWidget(
              size: size,
              name: 'Lionel Messi',
              desc:
                  'Cinemas is the ultimate experience to see new movies in Gold Class or Vmax. Find a cinema near you.',
              imagePath: AssetsPath.imageDp,
              date: '27 Feb',
            ),
            CommentWidget(
              size: size,
              name: 'Anjelina Jolly',
              desc:
                  'Cinemas is the ultimate experience to see new movies in Gold Class or Vmax. Find a cinema near you.',
              imagePath: AssetsPath.imageDp,
              date: '29 Feb',
            ),
          ],
        ),
      ),
    );
  }
}
