import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/assets_path.dart';
import 'package:shopstantly_app/utils/dimensions.dart';

import 'components/custom_tab.dart';
import 'components/follower_counter.dart';
import 'components/mini_button.dart';

class OwnersScreen extends StatefulWidget {
  const OwnersScreen({Key? key}) : super(key: key);

  @override
  State<OwnersScreen> createState() => _OwnersScreenState();
}

class _OwnersScreenState extends State<OwnersScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      initialIndex: 0,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.arrow_back,
        //     color: kDarkColor,
        //   ),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
        leadingWidth: 0.0,
        elevation: 0.0,
        backgroundColor: kBackgroundColor,
        title: Row(
          children: const <Widget>[
            Text(
              'Profile',
              style: TextStyle(
                  fontFamily: kDefaultFont,
                  fontSize: kNormalText,
                  color: kPrimaryTextColor,
                  fontWeight: FontWeight.w500),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: kPrimaryTextColor,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              color: kIconColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu_outlined,
              color: kIconColor,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TabBar(
              tabs: getTabs(size.width / 4),
              controller: _tabController,
              indicatorColor: kPrimaryColor,
              labelColor: kPrimaryColor,
              labelStyle: const TextStyle(fontFamily: kDefaultFont),
              isScrollable: true,
              indicator: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.transparent))),
              unselectedLabelColor: kLightGrayColor,
              unselectedLabelStyle: const TextStyle(
                color: kLightGrayColor,
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 1.0,
            ),
            Container(
              width: double.infinity,
              height: 1.0,
              decoration: const BoxDecoration(color: kLightGrayColor),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                              Container(
                                width: size.width * 0.100,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5.0, vertical: 5.0),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: kPrimaryColor,
                                      width: 1.0,
                                    ),
                                    shape: BoxShape.circle,
                                    color: kPrimaryColor),
                                child: SvgPicture.asset(
                                  AssetsPath.editIcon,
                                  color: kWhiteColor,
                                  height: 15.0,
                                  width: 15.0,
                                ),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              MiniButton(
                                width: size.width * 0.200,
                                size: size,
                                iconPath: AssetsPath.walletIcon,
                                title: 'Wallet',
                              ),
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
                            count: '350',
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
                            title: 'Thrift',
                            count: '4',
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
                  ],
                ),
              ),
            ),
            Flexible(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
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
            ),
          ],
        ),
      ),
    );
  }
}
