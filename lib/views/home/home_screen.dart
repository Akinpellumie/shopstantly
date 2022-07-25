import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopstantly_app/utils/assets_path.dart';
import 'package:shopstantly_app/utils/dimensions.dart';
import 'package:shopstantly_app/utils/main_page_app_bar.dart';

import '../../utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MainPageAppBar(
        actions: [
          SvgPicture.asset(
            AssetsPath.searchIcon,
            color: kIconColor,
            width: 20.0,
            height: 20.0,
          ),
          const SizedBox(
            width: 10.0,
          ),
          SvgPicture.asset(
            AssetsPath.settingsIcon,
            color: kIconColor,
            width: 20.0,
            height: 20.0,
          ),
          const SizedBox(
            width: 10.0,
          ),
        ],
        appBar: AppBar(),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Image.asset(
            'assets/images/shoplogo.png',
            fit: BoxFit.fitHeight,
            height: 60.0,
          ),
        ),
      ),
      body: CustomScrollView(
        controller: ScrollController(
          keepScrollOffset: true,
        ),
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = 0;
                                  });
                                },
                                child: menuTabItem(
                                  size,
                                  'Plus',
                                  selectedIndex == 0 ? true : false,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = 1;
                                  });
                                },
                                child: menuTabItem(
                                  size,
                                  'Business',
                                  selectedIndex == 1 ? true : false,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = 2;
                                  });
                                },
                                child: menuTabItem(
                                  size,
                                  'Social',
                                  selectedIndex == 2 ? true : false,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = 3;
                                  });
                                },
                                child: menuTabItem(
                                  size,
                                  'Event',
                                  selectedIndex == 3 ? true : false,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = 4;
                                  });
                                },
                                child: menuTabItem(
                                  size,
                                  'Thrift',
                                  selectedIndex == 4 ? true : false,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: kWhiteColor,
                              boxShadow: const [
                                BoxShadow(
                                    color: kBoxShadowColor,
                                    offset: Offset(3, 6),
                                    blurRadius: 7.0)
                              ],
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: size.height * 0.070,
                                      width: size.height * 0.070,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kProfileBannerColor,
                                        border: Border.all(
                                            color: Colors.white, width: 5.0),
                                      ),
                                      child: ClipOval(
                                        child: Image.asset(
                                          AssetsPath.imageDp,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Blog Name',
                                          style: TextStyle(
                                            fontFamily: kDefaultFont,
                                            fontSize: size.height * 0.0180,
                                            fontWeight: FontWeight.w600,
                                            color: kPrimaryColor,
                                          ),
                                        ),
                                        Text(
                                          'Jan 20, 2022',
                                          style: TextStyle(
                                            fontFamily: kDefaultFont,
                                            fontSize: size.height * 0.0150,
                                            fontWeight: FontWeight.normal,
                                            color: kPlaceholderColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.asset(
                                      AssetsPath.fruit,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Food price rise fears amid staff shortages testing length',
                                  style: TextStyle(
                                    fontFamily: kDefaultFont,
                                    fontSize: size.height * 0.0180,
                                    fontWeight: FontWeight.w500,
                                    color: kPrimaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          CupertinoIcons.heart,
                                          color: kPlaceholderColor,
                                          size: size.height * 0.025,
                                        ),
                                        const SizedBox(
                                          width: 7.0,
                                        ),
                                        SizedBox(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Icon(
                                                CupertinoIcons.chat_bubble,
                                                color: kPlaceholderColor,
                                                size: size.height * 0.025,
                                              ),
                                              const SizedBox(
                                                width: 3.0,
                                              ),
                                              Text(
                                                '43',
                                                style: TextStyle(
                                                  fontFamily: kDefaultFont,
                                                  fontSize:
                                                      size.height * 0.0150,
                                                  fontWeight: FontWeight.w300,
                                                  color: kPrimaryColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 7.0,
                                        ),
                                        SizedBox(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Icon(
                                                CupertinoIcons.bookmark,
                                                color: kPlaceholderColor,
                                                size: size.height * 0.025,
                                              ),
                                              const SizedBox(
                                                width: 3.0,
                                              ),
                                              Text(
                                                'Bookmark',
                                                style: TextStyle(
                                                  fontFamily: kDefaultFont,
                                                  fontSize:
                                                      size.height * 0.0150,
                                                  fontWeight: FontWeight.w300,
                                                  color: kPrimaryColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Container(
                                      margin:
                                          const EdgeInsets.only(right: 10.0),
                                      child: Icon(
                                        CupertinoIcons.paperplane,
                                        color: kPlaceholderColor,
                                        size: size.height * 0.020,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: kWhiteColor,
                              boxShadow: const [
                                BoxShadow(
                                    color: kBoxShadowColor,
                                    offset: Offset(3, 6),
                                    blurRadius: 7.0)
                              ],
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: size.height * 0.070,
                                      width: size.height * 0.070,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kProfileBannerColor,
                                        border: Border.all(
                                            color: Colors.white, width: 5.0),
                                      ),
                                      child: ClipOval(
                                        child: Image.asset(
                                          AssetsPath.imageDp,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Blog Name',
                                          style: TextStyle(
                                            fontFamily: kDefaultFont,
                                            fontSize: size.height * 0.0180,
                                            fontWeight: FontWeight.w600,
                                            color: kPrimaryColor,
                                          ),
                                        ),
                                        Text(
                                          'Jan 20, 2022',
                                          style: TextStyle(
                                            fontFamily: kDefaultFont,
                                            fontSize: size.height * 0.0150,
                                            fontWeight: FontWeight.normal,
                                            color: kPlaceholderColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.asset(
                                      AssetsPath.fruit,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Food price rise fears amid staff shortages testing length',
                                  style: TextStyle(
                                    fontFamily: kDefaultFont,
                                    fontSize: size.height * 0.0180,
                                    fontWeight: FontWeight.w500,
                                    color: kPrimaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          CupertinoIcons.heart,
                                          color: kPlaceholderColor,
                                          size: size.height * 0.025,
                                        ),
                                        const SizedBox(
                                          width: 7.0,
                                        ),
                                        SizedBox(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Icon(
                                                CupertinoIcons.chat_bubble,
                                                color: kPlaceholderColor,
                                                size: size.height * 0.025,
                                              ),
                                              const SizedBox(
                                                width: 3.0,
                                              ),
                                              Text(
                                                '43',
                                                style: TextStyle(
                                                  fontFamily: kDefaultFont,
                                                  fontSize:
                                                      size.height * 0.0150,
                                                  fontWeight: FontWeight.w300,
                                                  color: kPrimaryColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 7.0,
                                        ),
                                        SizedBox(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Icon(
                                                CupertinoIcons.bookmark,
                                                color: kPlaceholderColor,
                                                size: size.height * 0.025,
                                              ),
                                              const SizedBox(
                                                width: 3.0,
                                              ),
                                              Text(
                                                'Bookmark',
                                                style: TextStyle(
                                                  fontFamily: kDefaultFont,
                                                  fontSize:
                                                      size.height * 0.0150,
                                                  fontWeight: FontWeight.w300,
                                                  color: kPrimaryColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Container(
                                      margin:
                                          const EdgeInsets.only(right: 10.0),
                                      child: Icon(
                                        CupertinoIcons.paperplane,
                                        color: kPlaceholderColor,
                                        size: size.height * 0.020,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                childCount: 1),
          ),
        ],
      ),
    );
  }

  SizedBox menuTabItem(Size size, String title, bool active) {
    return SizedBox(
      //width: boxWidth,
      child: Row(
        children: [
          Visibility(
            visible: active,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 5.0,
                vertical: 5.0,
              ),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: SvgPicture.asset(
                AssetsPath.work,
                color: kWhiteColor,
              ),
            ),
          ),
          const SizedBox(
            width: 5.0,
          ),
          Text(
            title,
            style: TextStyle(
              fontFamily: kDefaultFont,
              fontSize: size.height * 0.0150,
              fontWeight: FontWeight.normal,
              color: active ? kPrimaryColor : kPlaceholderColor,
            ),
          ),
        ],
      ),
    );
  }
}
