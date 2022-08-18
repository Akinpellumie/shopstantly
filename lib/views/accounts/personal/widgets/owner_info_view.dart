import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/assets_path.dart';
import '../../../../utils/dimensions.dart';
import '../components/follower_counter.dart';
import '../components/mini_button.dart';


class OwnerInfoView extends StatelessWidget {
  const OwnerInfoView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kProfileBannerColor,
                      border: Border.all(color: Colors.white, width: 5.0),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        AssetsPath.image2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Akinpelumi Akinlade',
                        style: TextStyle(
                          fontSize: size.height * 0.0190,
                          fontWeight: FontWeight.w500,
                          fontFamily: kDefaultFont,
                          color: kPrimaryColor,
                        ),
                      ),
                      Text(
                        '@layi',
                        style: TextStyle(
                          fontSize: size.height * 0.0170,
                          fontWeight: FontWeight.w400,
                          fontFamily: kDefaultFont,
                          color: kPrimaryColor,
                        ),
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
                          size: size,
                          title: 'Following',
                          count: '350',
                        ),
                        // const SizedBox(width: 10.0,),
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
                          count: '346',
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
                          count: '2',
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MiniButton(
                        width: size.width / 3,
                        size: size,
                        iconPath: AssetsPath.walletIcon,
                        title: 'Edit Profile',
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      MiniButton(
                        width: size.width / 3,
                        size: size,
                        iconPath: AssetsPath.walletIcon,
                        title: 'Wallet',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
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
                      fontSize: size.height * 0.0180,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Read More.',
                        style: TextStyle(
                          color: kPurpleColor,
                          fontFamily: kDefaultFont,
                          fontWeight: FontWeight.w600,
                          fontSize: size.height * 0.0200,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Interests',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontFamily: kDefaultFont,
                          fontWeight: FontWeight.w500,
                          fontSize: size.height * 0.0200,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                        vertical: 6.0,
                      ),
                      decoration: BoxDecoration(
                        color: kPurpleColor.withOpacity(0.10),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AssetsPath.pencilIcon,
                            color: kPurpleColor,
                            height: 25.0,
                            width: 25.0,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'CHANGE',
                            style: TextStyle(
                              color: kPurpleColor,
                              fontFamily: kDefaultFont,
                              fontWeight: FontWeight.w500,
                              fontSize: size.height * 0.0150,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
