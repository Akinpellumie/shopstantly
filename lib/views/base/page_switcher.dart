import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/assets_path.dart';
import 'package:shopstantly_app/views/accounts/business/business_account_screen.dart';
import 'package:shopstantly_app/views/accounts/social/social_account_screen.dart';
import 'package:shopstantly_app/views/home/home_screen.dart';
import 'package:shopstantly_app/views/logistics/getting_started.dart';
import 'package:shopstantly_app/views/manage/manage_screen.dart';
import 'package:shopstantly_app/views/shop/shop_screen.dart';

import 'fab_bottom_app_bar.dart';

class PageSwitcher extends StatefulWidget {
  const PageSwitcher({Key? key}) : super(key: key);

  @override
  _PageSwitcherState createState() => _PageSwitcherState();
}

class _PageSwitcherState extends State<PageSwitcher> {
  final Color navigationBarColor = kBackgroundColor;
  int selectedIndex = 0;
  String fabIcon = AssetsPath.bagShopePlus;
  
  void _selectedTab(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void _selectedFab(int index) {
    setState(() {
      selectedIndex = index;
      fabIcon = AssetsPath.bagShop;
    });
  }

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
        //backgroundColor: Colors.transparent,
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: const <Widget>[
            HomeScreen(),
            ManageScreen(),
            SocialAccountScreen(),
            BusinessAccountScreen(),
            GettingStarted(),
          ],
        ),
        bottomNavigationBar: FABBottomAppBar(
          centerItemText: 'Plus',
          backgroundColor: kBackgroundColor,
          color: kPlaceholderColor,
          selectedColor: kPrimaryColor,
          notchedShape: const CircularNotchedRectangle(),
          onTabSelected: (index) {
            setState(() {
              selectedIndex = index;
              if (index == 4) {
                fabIcon = AssetsPath.bagShop;
              } else {
                fabIcon = AssetsPath.bagShopePlus;
              }
            });
            pageController.animateToPage(
              selectedIndex,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutQuad,
            );
          },
          items: [
            FABBottomAppBarItem(iconData: Icons.home, text: 'Home'),
            FABBottomAppBarItem(iconData: Icons.shopping_cart, text: 'Manage'),
            FABBottomAppBarItem(
                iconData: Icons.grid_view_rounded, text: 'Dashboard'),
            FABBottomAppBarItem(
                iconData: Icons.account_circle, text: 'Profile'),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // floatingActionButton: _buildFab(
        //     context),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kBackgroundColor,
          child: Image.asset(
            fabIcon,
            fit: BoxFit.contain,
            width: 30.0,
            height: 30.0,
          ),
          onPressed: () {
            // setState(() {
            //   selectedIndex == 4;
            //   _selectedFab(selectedIndex);
            // });
            pageController.animateToPage(
              4,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutQuad,
            );
          },
        ),
      ),
    );
  }
}
