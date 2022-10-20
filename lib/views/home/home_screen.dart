import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopstantly_app/utils/assets_path.dart';
import 'package:shopstantly_app/utils/dimensions.dart';
import 'package:shopstantly_app/views/home/widgets/feed_view.dart';
import 'package:shopstantly_app/views/home/widgets/trend_view.dart';
import 'package:shopstantly_app/views/home/widgets/video_view.dart';

import '../../utils/app_colors.dart';
import 'widgets/audio_view.dart';
import 'widgets/event_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  int carouselIndex = 0;
  int eventFilterIndex = 0;
  int thriftFilterIndex = 0;
  bool showFilterTabs = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 0.0,
          backgroundColor: kBackgroundColor,
          elevation: 0.0,
          flexibleSpace: Center(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                'assets/images/shoplogo.png',
                fit: BoxFit.fitHeight,
                height: 60.0,
              ),
            ),
          ),
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
            const Icon(
              Icons.add_circle_outline,
              color: kIconColor,
              size: 22.0,
            ),
            const SizedBox(
              width: 20.0,
            ),
          ],
        ),
        body: CustomScrollView(
          controller: ScrollController(
            keepScrollOffset: true,
          ),
          slivers: [
            SliverAppBar(
              leadingWidth: 0.0,
              elevation: 0.0,
              automaticallyImplyLeading: true,
              pinned: true,
              backgroundColor: kBackgroundColor,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: const EdgeInsets.all(0.0),
                centerTitle: false,
                title: Column(
                  children: [
                    Container(
                      height: 1.0,
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      width: size.width,
                      color: kLightGrayColor.withOpacity(0.45),
                    ),
                    Container(
                      width: size.width,
                      padding: EdgeInsets.zero,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = 0;
                              });
                            },
                            child: menuTabItem(
                              size,
                              'Trend',
                              selectedIndex == 0 ? true : false,
                              AssetsPath.trendMenu,
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
                              'Feed',
                              selectedIndex == 1 ? true : false,
                              AssetsPath.feedMenu,
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
                              'Video',
                              selectedIndex == 2 ? true : false,
                              AssetsPath.videoMenu,
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
                              'Audio',
                              selectedIndex == 3 ? true : false,
                              AssetsPath.audioMenu,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = 4;
                                showFilterTabs = true;
                              });
                            },
                            child: menuTabItem(
                              size,
                              'Event',
                              selectedIndex == 4 ? true : false,
                              AssetsPath.eventMenu,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // //this tab will only appear when event or thrift is active
            // SliverToBoxAdapter(
            //   child: Container(
            //     padding: const EdgeInsets.only(
            //       left: 20.0,
            //     ),
            //     height: selectedIndex < 3 ? 1.0 : size.height * 0.050,
            //     child: ListView.builder(
            //       scrollDirection: Axis.horizontal,
            //       itemCount: getFilterLength(),
            //       itemBuilder: (context, index) {
            //         return GestureDetector(
            //             onTap: () {
            //               setState(() {
            //                 switch (selectedIndex) {
            //                   case 3:
            //                     thriftFilterIndex = index;
            //                     break;
            //                   case 4:
            //                     eventFilterIndex = index;
            //                     break;
            //                   default:
            //                     break;
            //                 }
            //               });
            //             },
            //             child: displayFilterTabs(size, index));
            //       },
            //     ),
            //   ),
            // ),

            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  padding: const EdgeInsets.symmetric(
                    //horizontal: selectedIndex == 0 ? 0.0 : 20.0,
                    vertical: 10.0,
                  ),
                  child: displayWidget(size),
                ),
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget displayWidget(Size size) {
    if (selectedIndex == 0) {
      return TrendView(size: size);
    } else if (selectedIndex == 1) {
      return FeedView(size: size);
    } else if (selectedIndex == 2) {
      return VideoView(size: size);
    } else if (selectedIndex == 3) {
      return AudioView(size: size);
    } else if (selectedIndex == 4) {
      return EventView(size: size);
    } else {
      return TrendView(size: size);
    }
  }

  final List<String> eventFilterTexts = [
    'Popular',
    'Trending',
    'Music',
    'Business',
    'Arts',
    'Community',
    'Upcoming'
  ];
  final List<String> thriftFilterTexts = [
    'Trousers',
    'Shoes',
    'Clothes',
    'Bags',
    'Tops',
    'Electronics'
  ];

  int getFilterLength() {
    if (selectedIndex == 3) {
      return thriftFilterTexts.length;
    } else if (selectedIndex == 4) {
      return eventFilterTexts.length;
    } else {
      return 0;
    }
  }

  SizedBox menuTabItem(Size size, String title, bool active, String iconPath) {
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
              height: 25.0,
              width: 25.0,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: SvgPicture.asset(
                iconPath,
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
              fontSize: size.height * 0.0180,
              fontWeight: FontWeight.normal,
              color: active ? kPrimaryColor : kPlaceholderColor,
            ),
          ),
        ],
      ),
    );
  }

  Center eventFilterItem(String eventFilterText, bool active, Size size) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 3.0),
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 5.0,
        ),
        decoration: BoxDecoration(
          color: active ? kPrimaryColor : kTabBgColor,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Text(
          eventFilterText,
          style: TextStyle(
            fontFamily: kDefaultFont,
            fontSize: size.height * 0.0150,
            fontWeight: FontWeight.normal,
            color: active ? kWhiteColor : kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
