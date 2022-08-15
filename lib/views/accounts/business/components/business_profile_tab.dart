import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/assets_path.dart';
import 'package:shopstantly_app/utils/dimensions.dart';

List<Widget> getBusinessTabs(double _width) {
  List<Widget> tabs = [];

  var wid1 = SizedBox(
    width: _width,
    child: const Align(
      alignment: Alignment.centerLeft,
      child: Tab(
        text: 'Info',
      ),
    ),
  );
  var wid2 = SizedBox(
    width: _width,
    child: const Align(
      alignment: Alignment.centerLeft,
      child: Tab(
        text: 'Products',
      ),
    ),
  );
  var wid3 = SizedBox(
    width: _width,
    child: const Align(
      alignment: Alignment.centerLeft,
      child: Tab(
        text: 'Post',
      ),
    ),
  );
  var wid4 = SizedBox(
    width: _width,
    child: const Align(
      alignment: Alignment.centerLeft,
      child: Tab(
        text: 'Event',
      ),
    ),
  );
  tabs.add(wid1);
  tabs.add(wid2);
  tabs.add(wid3);
  tabs.add(wid4);
  return tabs;
}

List<Widget> getProductListTabs(int index) {
  List<Widget> tabs = [];

  var wid1 = SizedBox(
    child: Align(
      alignment: Alignment.centerLeft,
      child: Tab(
        iconMargin: const EdgeInsets.only(bottom: 5.0),
        icon: Container(
          padding: const EdgeInsets.all(7.0),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == 0 ? kTabIconBgColor : kBackgroundColor),
          child: SvgPicture.asset(AssetsPath.shoe),
        ),
        text: 'Shoes',
      ),
    ),
  );
  var wid2 = SizedBox(
    child: Align(
      alignment: Alignment.centerLeft,
      child: Tab(
        iconMargin: const EdgeInsets.only(bottom: 2.0),
        icon: Container(
          padding: const EdgeInsets.all(7.0),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == 1 ? kTabIconBgColor : kBackgroundColor),
          child: SvgPicture.asset(AssetsPath.running),
        ),
        text: 'Sneakers',
      ),
    ),
  );
  var wid3 = SizedBox(
    child: Align(
      alignment: Alignment.centerLeft,
      child: Tab(
        iconMargin: const EdgeInsets.only(bottom: 5.0),
        icon: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == 2 ? kTabIconBgColor : kBackgroundColor),
          child: SvgPicture.asset(AssetsPath.handbag),
        ),
        text: 'Bags',
      ),
    ),
  );
  var wid4 = SizedBox(
    child: Align(
      alignment: Alignment.centerLeft,
      child: Tab(
        iconMargin: const EdgeInsets.only(bottom: 5.0),
        icon: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == 3 ? kTabIconBgColor : kBackgroundColor),
          child: SvgPicture.asset(AssetsPath.clothes),
        ),
        text: 'Tops',
      ),
    ),
  );
  var wid5 = SizedBox(
    child: Align(
      alignment: Alignment.centerLeft,
      child: Tab(
        iconMargin: const EdgeInsets.only(bottom: 5.0),
        icon: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == 4 ? kTabIconBgColor : kBackgroundColor),
          child: SvgPicture.asset(AssetsPath.watch),
        ),
        text: 'WristWatch',
      ),
    ),
  );
  var wid6 = SizedBox(
    child: Align(
      alignment: Alignment.centerLeft,
      child: Tab(
        iconMargin: const EdgeInsets.only(bottom: 5.0),
        icon: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == 5 ? kTabIconBgColor : kBackgroundColor),
          child: SvgPicture.asset(AssetsPath.glasses),
        ),
        text: 'Glasses',
      ),
    ),
  );
  tabs.add(wid1);
  tabs.add(wid2);
  tabs.add(wid3);
  tabs.add(wid4);
  tabs.add(wid5);
  tabs.add(wid6);
  return tabs;
}

List<Widget> getProductCategoryTabs(int index) {
  List<Widget> tabs = [];

  var wid1 = SizedBox(
    child: Align(
      alignment: Alignment.centerLeft,
      child: Tab(
        iconMargin: const EdgeInsets.only(bottom: 5.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
          decoration: BoxDecoration(
              color: index == 0 ? kPrimaryColor : kCategoryTabColor),
          child: Text(
            'Category A',
            style: TextStyle(
              color: index == 0 ? kWhiteColor : kPlaceholderColor,
              fontFamily: kDefaultFont,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    ),
  );

  var wid2 = SizedBox(
    child: Align(
      alignment: Alignment.centerLeft,
      child: Tab(
        iconMargin: const EdgeInsets.only(bottom: 5.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
          decoration: BoxDecoration(
            color: index == 1 ? kPrimaryColor : kCategoryTabColor,
          ),
          child: Text(
            'Category B',
            style: TextStyle(
                color: index == 1 ? kWhiteColor : kPlaceholderColor,
                fontFamily: kDefaultFont,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
    ),
  );

  var wid3 = SizedBox(
    child: Align(
      alignment: Alignment.centerLeft,
      child: Tab(
        iconMargin: const EdgeInsets.only(bottom: 5.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
          decoration: BoxDecoration(
            color: index == 2 ? kPrimaryColor : kCategoryTabColor,
          ),
          child: Text(
            'Category C',
            style: TextStyle(
                color: index == 2 ? kWhiteColor : kPlaceholderColor,
                fontFamily: kDefaultFont,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
    ),
  );

  var wid4 = SizedBox(
    child: Align(
      alignment: Alignment.centerLeft,
      child: Tab(
        iconMargin: const EdgeInsets.only(bottom: 5.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
          decoration: BoxDecoration(
            color: index == 3 ? kPrimaryColor : kCategoryTabColor,
          ),
          child: Text(
            'Category D',
            style: TextStyle(
                color: index == 3 ? kWhiteColor : kPlaceholderColor,
                fontFamily: kDefaultFont,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
    ),
  );
  tabs.add(wid1);
  tabs.add(wid2);
  tabs.add(wid3);
  tabs.add(wid4);
  return tabs;
}
