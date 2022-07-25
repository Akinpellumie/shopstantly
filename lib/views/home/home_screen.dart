import 'package:carousel_slider/carousel_slider.dart';
import 'package:face_pile/face_pile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopstantly_app/utils/assets_path.dart';
import 'package:shopstantly_app/utils/dimensions.dart';
import 'package:shopstantly_app/utils/main_page_app_bar.dart';
import 'package:shopstantly_app/views/home/widgets/business_view.dart';
import 'package:shopstantly_app/views/home/widgets/thrift_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/app_colors.dart';
import '../accounts/business/components/product_card.dart';
import 'components/build_image.dart';
import 'components/event_card_item.dart';
import 'components/news_card_item.dart';
import 'widgets/event_view.dart';
import 'widgets/news_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  int carouselIndex = 0;
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
          SliverAppBar(
            leadingWidth: 0.0,
            elevation: 0.0,
            automaticallyImplyLeading: false,
            pinned: true,
            backgroundColor: kBackgroundColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
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
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                child: displayWidget(size),
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
      return NewsView(size: size);
    } else if (selectedIndex == 1) {
      return BusinessView(size: size);
    } else if (selectedIndex == 2) {
      return BusinessView(size: size);
    } else if (selectedIndex == 3) {
      return EventView(size: size);
    } else if (selectedIndex == 4) {
      return ThriftView(size: size);
    } else {
      return NewsView(size: size);
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
