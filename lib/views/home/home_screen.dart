import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopstantly_app/utils/assets_path.dart';
import 'package:shopstantly_app/utils/dimensions.dart';
import 'package:shopstantly_app/utils/main_page_app_bar.dart';
import 'package:shopstantly_app/views/home/widgets/channel_view.dart';
import 'package:shopstantly_app/views/home/widgets/feed_view.dart';
import 'package:shopstantly_app/views/home/widgets/social_view.dart';
import 'package:shopstantly_app/views/home/widgets/thrift_view.dart';

import '../../data/choice_chips.dart';
import '../../models/general/choice_chip_data.dart';
import '../../utils/app_colors.dart';
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
  final double spacing = 8;
  List<ChoiceChipData> choiceChips = ChoiceChips.all;
  bool showFilterTabs = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MainPageAppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SvgPicture.asset(
            AssetsPath.searchIcon,
            color: kIconColor,
            width: 20.0,
            height: 20.0,
          ),
        ),
        actions: [
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
          alignment: Alignment.center,
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
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
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
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 1.0,
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    width: size.width,
                    color: kLightGrayColor.withOpacity(0.45),
                  ),
                ],
              ),
            ),
          ),
          //this tab will only appear when event or thrift is active
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.only(
                left: 20.0,
              ),
              height: selectedIndex < 3 ? 1.0 : size.height * 0.050,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: getFilterLength(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        setState(() {
                          switch (selectedIndex) {
                            case 3:
                              thriftFilterIndex = index;
                              break;
                            case 4:
                              eventFilterIndex = index;
                              break;
                            default:
                              break;
                          }
                        });
                      },
                      child: displayFilterTabs(size, index));
                },
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                padding: EdgeInsets.symmetric(
                  horizontal: selectedIndex == 0 ? 0.0 : 20.0,
                  vertical: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Popular Mentions',
                              style: TextStyle(
                                color: kPrimaryTextColor,
                                fontSize: size.height * 0.018,
                                fontFamily: kDefaultFont,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            'see all',
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: buildChoiceChips(size),
                    ),
                  ],
                ),
              ),
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }

  Widget displayWidget(Size size) {
    if (selectedIndex == 0) {
      return FeedView(size: size);
    } else if (selectedIndex == 1) {
      return SocialView(size: size);
    } else if (selectedIndex == 2) {
      return ChannelView(size: size);
    } else if (selectedIndex == 3) {
      return ThriftView(size: size);
    } else if (selectedIndex == 4) {
      return EventView(size: size);
    } else {
      return FeedView(size: size);
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

  Widget displayFilterTabs(Size size, int index) {
    if (selectedIndex == 3) {
      return eventFilterItem(
        eventFilterTexts[index],
        eventFilterIndex == index ? true : false,
        size,
      );
    } else if (selectedIndex == 4) {
      return eventFilterItem(
        thriftFilterTexts[index],
        thriftFilterIndex == index ? true : false,
        size,
      );
    } else {
      return const SizedBox(
        height: 10.0,
      );
    }
  }

  List<int> generateNumbers() => List<int>.generate(6, (i) => i + 1);

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

  Widget buildChoiceChips(Size size) => Wrap(
        runSpacing: spacing,
        spacing: spacing,
        children: choiceChips
            .map((choiceChip) => ChoiceChip(
                  label: Text(choiceChip.label!),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: choiceChip.isSelected ? kWhiteColor : kTabTextColor,
                    fontSize: size.height * 0.017,
                  ),
                  //shape: OutlinedBorder(side: ),
                  onSelected: (isSelected) => setState(() {
                    choiceChips = choiceChips.map((otherChip) {
                      final newChip = otherChip.copy(isSelected: false);

                      return choiceChip == newChip
                          ? newChip.copy(isSelected: isSelected)
                          : newChip;
                    }).toList();
                  }),
                  selected: choiceChip.isSelected,
                  selectedColor: kPrimaryColor,
                  backgroundColor: kTabBgColor,
                ))
            .toList(),
      );
}
