import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/assets_path.dart';
import 'package:shopstantly_app/views/accounts/business/business_account_screen.dart';
import 'package:shopstantly_app/views/accounts/personal/owner/personal_account_screen.dart';
import 'package:shopstantly_app/views/accounts/social/users/social_account_user_screen.dart';
import 'package:shopstantly_app/views/home/home_screen.dart';
import 'package:shopstantly_app/views/logistics/getting_started.dart';
import 'package:shopstantly_app/views/manage/manage_screen.dart';
import 'package:shopstantly_app/views/shop/shop_screen.dart';

import '../accounts/business/owners/business_account_owner_screen.dart';
import 'fab_bottom_app_bar.dart';

class PageSwitcher extends StatefulWidget {
  const PageSwitcher({Key? key}) : super(key: key);

  @override
  _PageSwitcherState createState() => _PageSwitcherState();
}

class _PageSwitcherState extends State<PageSwitcher> {
  final Color navigationBarColor = kBackgroundColor;
  int selectedIndex = 0;
  Color fabIconColor = kPlaceholderColor;

  void _selectedTab(int index) {
    setState(() {
      selectedIndex = index;
      fabIconColor = selectedIndex == 4 ? kPrimaryColor : kPlaceholderColor;
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
            BusinessAccountOwnerScreen(),
            PersonalAccountScreen(),
            GettingStarted(),
          ],
        ),
        bottomNavigationBar: FABBottomAppBar(
          centerItemText: 'Logistics',
          backgroundColor: kBackgroundColor,
          color: selectedIndex == 4 ? kPrimaryColor : kPlaceholderColor,
          selectedColor: selectedIndex == 4 ? kPlaceholderColor : kPrimaryColor,
          notchedShape: const CircularNotchedRectangle(),
          onTabSelected: (index) {
            setState(() {
              selectedIndex = index;
              _selectedTab(index);
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
          child: Icon(
            Icons.my_location,
            size: 25.0,
            color: fabIconColor,
          ),
          onPressed: () {
            setState(() {
              selectedIndex == 4;
              //_selectedTab(4);
              fabIconColor = kPrimaryColor;
            });
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
