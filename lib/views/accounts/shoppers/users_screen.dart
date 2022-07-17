import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/dimensions.dart';
import 'components/circle_button.dart';
import 'components/custom_tab.dart';
import 'components/follower_counter.dart';
import 'components/mini_button.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: tabs.length,
      initialIndex: 0,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.data_saver_on_outlined,
            color: kDarkColor,
          ),
          onPressed: () {
            //Navigator.pop(context);
          },
        ),
        elevation: 0.0,
        backgroundColor: kBackgroundColor,
        title: const Text(
          '',
          style: TextStyle(
              fontFamily: kDefaultFont,
              fontSize: kNormalText,
              color: kPrimaryTextColor,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_outlined,
              color: kIconColor,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(
            20.0,
          ),
          child: Column(
            children: <Widget>[
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      padding: const EdgeInsets.all(5.0),
                      //width: size.height * 0.025,
                      height: size.height * 0.150,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          AssetsPath.profileDp,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Ashfak Sayem',
                      style: TextStyle(
                        fontSize: size.height * 0.025,
                        fontWeight: FontWeight.w500,
                        fontFamily: kDefaultFont,
                        color: kPrimaryColor,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FollowerCounter(
                            size: size,
                            title: 'Following',
                            count: '350',
                          ),
                          Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            height: 40.0,
                            width: 2.0,
                            color: kLineColor,
                          ),
                          FollowerCounter(
                            size: size,
                            title: 'Followers',
                            count: '346',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MiniButton(
                            size: size,
                            iconPath: AssetsPath.followIcon,
                            title: 'Follow',
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          CircleButton(
                            bgColor: kPrimaryColor,
                            iconColor: kWhiteColor,
                            iconData: CupertinoIcons.chat_bubble_fill,
                            pressed: () {},
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          CircleButton(
                            bgColor: kPrimaryColor,
                            iconColor: kWhiteColor,
                            iconData: CupertinoIcons.video_camera_solid,
                            pressed: () {},
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          CircleButton(
                            bgColor: kPrimaryColor,
                            iconColor: kWhiteColor,
                            iconData: CupertinoIcons.phone_fill,
                            pressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              TabBar(
                tabs: tabs,
                controller: _tabController,
                indicatorColor: kPrimaryColor,
                labelColor: kPrimaryColor,
                labelStyle: const TextStyle(fontFamily: kDefaultFont),
                isScrollable: true,
                indicator: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: kPrimaryColor))),
                unselectedLabelColor: kLightGrayColor,
                unselectedLabelStyle: const TextStyle(
                  color: kLightGrayColor,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 1.0,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Flexible(
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
                          fontSize: size.height * 0.0225,
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
                          fontSize: size.height * 0.018,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Read More.',
                            style: TextStyle(
                              color: kPurpleColor,
                              fontFamily: kDefaultFont,
                              fontWeight: FontWeight.w600,
                              fontSize: size.height * 0.020,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Interests',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontFamily: kDefaultFont,
                          fontWeight: FontWeight.w500,
                          fontSize: size.height * 0.0225,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
