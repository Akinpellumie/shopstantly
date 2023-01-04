import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/views/activity/activity_screen.dart';
import 'package:shopstantly_app/views/home/home_screen.dart';
import 'package:shopstantly_app/views/logistics/getting_started.dart';
import 'package:shopstantly_app/views/manage/manage_screen.dart';

import '../../utils/dimensions.dart';
import '../../utils/material_indicator.dart';
import '../accounts/others/account_switch_screen.dart';
import '../qwiks/qwik_screen.dart';

class PageSwitcher extends StatefulWidget {
  const PageSwitcher({Key? key}) : super(key: key);

  @override
  _PageSwitcherState createState() => _PageSwitcherState();
}

class _PageSwitcherState extends State<PageSwitcher>
    with TickerProviderStateMixin {
  //final Color navigationBarColor = kBackgroundColor;
  int selectedIndex = 0;

  // int selectBtn = 0;

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      vsync: this,
      length: 6,
      initialIndex: selectedIndex,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: kBackgroundColor,
          border: Border.fromBorderSide(
            BorderSide(
              width: 1.0,
              color: kPlaceholderColor,
              style: BorderStyle.solid,
            ),
          ),
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(
          //     25,
          //   ),
          //   topRight: Radius.circular(
          //     25,
          //   ),
          // ),
        ),
        child: TabBar(
          controller: tabController,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          indicator: const MaterialIndicator(
            height: 4,
            topLeftRadius: 0,
            topRightRadius: 0,
            bottomLeftRadius: 5,
            bottomRightRadius: 5,
            tabPosition: TabPosition.top,
          ),
          overlayColor: MaterialStateProperty.all(
            Colors.white,
          ),
          labelStyle: const TextStyle(
            fontSize: 12.0,
            color: kPlaceholderColor,
            fontWeight: FontWeight.w500,
            fontFamily: kDefaultFont,
          ),
          labelColor: kPrimaryColor,
          unselectedLabelStyle: const TextStyle(
            fontSize: 12.0,
            color: kPlaceholderColor,
            fontWeight: FontWeight.w400,
            fontFamily: kDefaultFont,
          ),
          tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                size: selectedIndex == 0 ? 26.0 : 24.0,
                color: selectedIndex == 0 ? kPrimaryColor : kPlaceholderColor,
              ),
              text: 'Home',
              // child: Align(
              //   alignment: Alignment.bottomCenter,
              //   child: Padding(
              //     padding: const EdgeInsets.only(bottom: 3.0),
              //     child: Text(
              //       'Home',
              //       style: TextStyle(
              //         color: selectedIndex == 0
              //             ? kPrimaryColor
              //             : kPlaceholderColor,
              //         fontFamily: kDefaultFont,
              //         fontSize: 8.0,
              //         // fontWeight: selectedIndex == 1
              //         //     ? FontWeight.w500
              //         //     : FontWeight.w400,
              //       ),
              //     ),
              //   ),
              // ),
            ),
            Tab(
              icon: Icon(
                Icons.shopping_cart,
                size: selectedIndex == 1 ? 26.0 : 24.0,
                color: selectedIndex == 1 ? kPrimaryColor : kPlaceholderColor,
              ),
              text: 'Qwiks',
              // child: Align(
              //   alignment: Alignment.bottomCenter,
              //   child: Padding(
              //     padding: const EdgeInsets.only(bottom: 3.0),
              //     child: Text(
              //       'Qwiks',
              //       style: TextStyle(
              //         color: selectedIndex == 1
              //             ? kPrimaryColor
              //             : kPlaceholderColor,
              //         fontFamily: kDefaultFont,
              //         fontSize: 8.0,
              //         // fontWeight: selectedIndex == 1
              //         //     ? FontWeight.w500
              //         //     : FontWeight.w400,
              //       ),
              //     ),
              //   ),
              // ),
            ),
            Tab(
              icon: Icon(
                Icons.local_mall,
                size: selectedIndex == 2 ? 26.0 : 24.0,
                color: selectedIndex == 2 ? kPrimaryColor : kPlaceholderColor,
              ),
              text: 'Explore',
              // child: Align(
              //   alignment: Alignment.bottomCenter,
              //   child: Padding(
              //     padding: const EdgeInsets.only(bottom: 3.0),
              //     child: Text(
              //       'Explore',
              //       style: TextStyle(
              //         color: selectedIndex == 2
              //             ? kPrimaryColor
              //             : kPlaceholderColor,
              //         fontFamily: kDefaultFont,
              //         fontSize: 8.0,
              //         // fontWeight: selectedIndex == 2
              //         //     ? FontWeight.w500
              //         //     : FontWeight.w400,
              //       ),
              //     ),
              //   ),
              // ),
            ),
            Tab(
              icon: Icon(
                Icons.shopping_cart,
                size: selectedIndex == 3 ? 26.0 : 24.0,
                color: selectedIndex == 3 ? kPrimaryColor : kPlaceholderColor,
              ),
              text: 'Manage',
              // child: Align(
              //   alignment: Alignment.bottomCenter,
              //   child: Padding(
              //     padding: const EdgeInsets.only(bottom: 3.0),
              //     child: Text(
              //       'Manage',
              //       style: TextStyle(
              //         color: selectedIndex == 3
              //             ? kPrimaryColor
              //             : kPlaceholderColor,
              //         fontFamily: kDefaultFont,
              //         fontSize: 8,
              //         // fontWeight: selectedIndex == 3
              //         //     ? FontWeight.w500
              //         //     : FontWeight.w400,
              //       ),
              //     ),
              //   ),
              // ),
            ),
            Tab(
              icon: Icon(
                Icons.notifications,
                size: selectedIndex == 4 ? 22.0 : 20.0,
                color: selectedIndex == 4 ? kPrimaryColor : kPlaceholderColor,
              ),
              text: 'Activity',
              // child: Align(
              //   alignment: Alignment.bottomCenter,
              //   child: Padding(
              //     padding: const EdgeInsets.only(bottom: 3.0),
              //     child: Text(
              //       'Activity',
              //       style: TextStyle(
              //         color: selectedIndex == 4
              //             ? kPrimaryColor
              //             : kPlaceholderColor,
              //         fontFamily: kDefaultFont,
              //         fontSize: 8.0,
              //         // fontWeight: selectedIndex == 4
              //         //     ? FontWeight.w500
              //         //     : FontWeight.w400,
              //       ),
              //     ),
              //   ),
              // ),
            ),
            Tab(
              icon: Icon(
                Icons.account_circle,
                size: selectedIndex == 5 ? 22.0 : 20.0,
                color: selectedIndex == 5 ? kPrimaryColor : kPlaceholderColor,
              ),
              text: 'Profile',
              // child: Align(
              //   alignment: Alignment.bottomCenter,
              //   child: Padding(
              //     padding: const EdgeInsets.only(bottom: 3.0),
              //     child: Text(
              //       'Profile',
              //       style: TextStyle(
              //         color: selectedIndex == 5
              //             ? kPrimaryColor
              //             : kPlaceholderColor,
              //         fontFamily: kDefaultFont,
              //         fontSize: 8.0,
              //         // fontWeight: selectedIndex == 5
              //         //     ? FontWeight.w500
              //         //     : FontWeight.w400,
              //       ),
              //     ),
              //   ),
              // ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const <Widget>[
          HomeScreen(),
          QwikScreen(),
          GettingStarted(),
          ManageScreen(),
          ActivityScreen(),
          AccountSwitchScreen(),
        ],
      ),
    );
  }
  // late PageController pageController;
  // @override
  // void initState() {
  //   super.initState();
  //   pageController = PageController(initialPage: selectedIndex);
  // }

  // @override
  // Widget build(BuildContext context) {
  //   /// [AnnotatedRegion<SystemUiOverlayStyle>] only for android black navigation bar. 3 button navigation control (legacy)

  //   return AnnotatedRegion<SystemUiOverlayStyle>(
  //     value: SystemUiOverlayStyle(
  //       systemNavigationBarColor: navigationBarColor.withOpacity(0.50),
  //       systemNavigationBarIconBrightness: Brightness.dark,
  //     ),
  //     child: Scaffold(
  //       //backgroundColor: kBackgroundColor.withOpacity(0.45),
  //       body: PageView(
  //         physics: const NeverScrollableScrollPhysics(),
  //         controller: pageController,
  //         children: const <Widget>[
  //           HomeScreen(),
  //           ManageScreen(),
  //           GettingStarted(),
  //           ActivityScreen(),
  //           AccountSwitchScreen(),
  //         ],
  //       ),
  //       bottomNavigationBar: navigationBar(),
  //     ),
  //   );
  // }

  // AnimatedContainer navigationBar() {
  //   return AnimatedContainer(
  //     height: 60.0,
  //     duration: const Duration(milliseconds: 400),
  //     decoration: BoxDecoration(
  //       color: kBackgroundColor,
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(selectBtn == 0 ? 0.0 : 15.0),
  //         topRight: Radius.circular(
  //             selectBtn == bottomBarMenus.length - 1 ? 0.0 : 15.0),
  //       ),
  //     ),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceAround,
  //       children: [
  //         for (int i = 0; i < bottomBarMenus.length; i++)
  //           GestureDetector(
  //             onTap: () {
  //               //=> setState(() => selectBtn = i)
  //               setState(() {
  //                 selectBtn = i;
  //               });
  //               pageController.animateToPage(
  //                 selectBtn,
  //                 duration: const Duration(milliseconds: 400),
  //                 curve: Curves.easeOutQuad,
  //               );
  //             },
  //             child: iconBtn(i),
  //           ),
  //       ],
  //     ),
  //   );
  // }

  // SizedBox iconBtn(int i) {
  //   bool isActive = selectBtn == i ? true : false;
  //   var height = isActive ? 40.0 : 0.0;
  //   var width = isActive ? 50.0 : 0.0;
  //   return SizedBox(
  //     width: 60.0,
  //     child: Stack(
  //       children: [
  //         Align(
  //           alignment: Alignment.topCenter,
  //           child: AnimatedContainer(
  //             height: height,
  //             width: width,
  //             duration: const Duration(milliseconds: 600),
  //             child: isActive
  //                 ? CustomPaint(
  //                     painter: ButtonNotch(),
  //                   )
  //                 : const SizedBox(),
  //           ),
  //         ),
  //         Align(
  //           alignment: Alignment.center,
  //           child: Container(
  //             margin: const EdgeInsets.only(bottom: 3.0),
  //             child: Icon(
  //               bottomBarMenus[i].iconData,
  //               color: isActive ? kPrimaryColor : kPlaceholderColor,
  //               size: 24.0,
  //             ),
  //           ),
  //         ),
  //         Align(
  //           alignment: Alignment.bottomCenter,
  //           child: Padding(
  //             padding: const EdgeInsets.only(bottom: 3.0),
  //             child: Text(
  //               bottomBarMenus[i].name,
  //               style: TextStyle(
  //                 color: isActive ? kPrimaryColor : kPlaceholderColor,
  //                 fontFamily: kDefaultFont,
  //                 fontSize: 11.0,
  //                 fontWeight: isActive ? FontWeight.w500 : FontWeight.w400,
  //               ),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

}
