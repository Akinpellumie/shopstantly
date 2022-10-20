import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/views/activity/activity_screen.dart';
import 'package:shopstantly_app/views/home/home_screen.dart';
import 'package:shopstantly_app/views/logistics/getting_started.dart';
import 'package:shopstantly_app/views/manage/manage_screen.dart';

import '../../data/bottom_bar_menus.dart';
import '../../utils/custom_paint.dart';
import '../../utils/dimensions.dart';
import '../accounts/others/account_switch_screen.dart';

class PageSwitcher extends StatefulWidget {
  const PageSwitcher({Key? key}) : super(key: key);

  @override
  _PageSwitcherState createState() => _PageSwitcherState();
}

class _PageSwitcherState extends State<PageSwitcher> {
  final Color navigationBarColor = kBackgroundColor;
  int selectedIndex = 0;

  int selectBtn = 0;

  // void _selectedTab(int index) {
  //   setState(() {
  //     selectedIndex = index;
  //     fabIconColor = selectedIndex == 4 ? kPrimaryColor : kPlaceholderColor;
  //   });
  // }

  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    /// [AnnotatedRegion<SystemUiOverlayStyle>] only for android black navigation bar. 3 button navigation control (legacy)

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: navigationBarColor.withOpacity(0.50),
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        //backgroundColor: kBackgroundColor.withOpacity(0.45),
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: const <Widget>[
            HomeScreen(),
            ManageScreen(),
            GettingStarted(),
            ActivityScreen(),
            AccountSwitchScreen(),
          ],
        ),
        bottomNavigationBar: navigationBar(),
      ),
    );
  }

  AnimatedContainer navigationBar() {
    return AnimatedContainer(
      height: 60.0,
      duration: const Duration(milliseconds: 400),
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(selectBtn == 0 ? 0.0 : 15.0),
          topRight: Radius.circular(
              selectBtn == bottomBarMenus.length - 1 ? 0.0 : 15.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int i = 0; i < bottomBarMenus.length; i++)
            GestureDetector(
              onTap: () {
                //=> setState(() => selectBtn = i)
                setState(() {
                  selectBtn = i;
                });
                pageController.animateToPage(
                  selectBtn,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeOutQuad,
                );
              },
              child: iconBtn(i),
            ),
        ],
      ),
    );
  }

  SizedBox iconBtn(int i) {
    bool isActive = selectBtn == i ? true : false;
    var height = isActive ? 40.0 : 0.0;
    var width = isActive ? 50.0 : 0.0;
    return SizedBox(
      width: 60.0,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: AnimatedContainer(
              height: height,
              width: width,
              duration: const Duration(milliseconds: 600),
              child: isActive
                  ? CustomPaint(
                      painter: ButtonNotch(),
                    )
                  : const SizedBox(),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: const EdgeInsets.only(bottom: 3.0),
              child: Icon(
                bottomBarMenus[i].iconData,
                color: isActive ? kPrimaryColor : kPlaceholderColor,
                size: 24.0,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 3.0),
              child: Text(
                bottomBarMenus[i].name,
                style: TextStyle(
                  color: isActive ? kPrimaryColor : kPlaceholderColor,
                  fontFamily: kDefaultFont,
                  fontSize: 11.0,
                  fontWeight: isActive ? FontWeight.w500 : FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
