import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/views/accounts/shoppers/owners_screen.dart';
import 'package:shopstantly_app/views/accounts/shoppers/users_screen.dart';
import 'package:shopstantly_app/views/dashboard/dashboard_screen.dart';
import 'package:shopstantly_app/views/events/create_event_screen.dart';
import 'package:shopstantly_app/views/home/home_screen.dart';
import 'package:shopstantly_app/views/manage/manage_screen.dart';
import 'package:shopstantly_app/views/shop/shop_screen.dart';
import 'package:shopstantly_app/views/thrift/post_thrift_screen.dart';

import '../../utils/assets_path.dart';
import '../../widgets/bottom_nav/bar_item.dart';
import '../../widgets/bottom_nav/build_nav_bar.dart';

class PageSwitcher extends StatefulWidget {
  const PageSwitcher({Key? key}) : super(key: key);

  @override
  _PageSwitcherState createState() => _PageSwitcherState();
}

class _PageSwitcherState extends State<PageSwitcher> {
  final Color navigationBarColor = kBackgroundColor;
  int selectedIndex = 0;
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
        systemNavigationBarColor: navigationBarColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: const <Widget>[
            HomeScreen(),
            ShopScreen(),
            ManageScreen(),
            DashboardScreen(),
            CreateEventScreen(),
          ],
        ),
        bottomNavigationBar: WaterDropNavBar(
          inactiveIconColor: kLightGrayColor,
          waterDropColor: kPrimaryColor,
          backgroundColor: kBackgroundColor,
          onItemSelected: (int index) {
            setState(() {
              selectedIndex = index;
            });
            pageController.animateToPage(selectedIndex,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOutQuad);
          },
          selectedIndex: selectedIndex,
          barItems: <BarItem>[
            BarItem(
                filledIcon: AssetsPath.homeIcon,
                outlinedIcon: AssetsPath.homeIcon,
                title: 'Home'),
            BarItem(
              filledIcon: AssetsPath.shopIcon,
              outlinedIcon: AssetsPath.shopIcon,
              title: 'Shops',
            ),
            BarItem(
              filledIcon: AssetsPath.manageIcon,
              outlinedIcon: AssetsPath.manageIcon,
              title: 'Manage',
            ),
            BarItem(
              filledIcon: AssetsPath.dashIcon,
              outlinedIcon: AssetsPath.dashIcon,
              title: 'Dashboard',
            ),
            BarItem(
                filledIcon: AssetsPath.profileIcon,
                outlinedIcon: AssetsPath.profileIcon,
                title: 'Profile'),
          ],
        ),
      ),
    );
  }
}
