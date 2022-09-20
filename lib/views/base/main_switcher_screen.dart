import 'package:flutter/material.dart';
import 'package:shopstantly_app/views/logistics/getting_started.dart';
import 'package:shopstantly_app/views/manage/manage_screen.dart';

import '../../data/bottom_bar_menus.dart';
import '../../utils/app_colors.dart';
import '../../utils/custom_paint.dart';
import '../../utils/dimensions.dart';
import '../accounts/others/account_switch_screen.dart';
import '../activity/activity_screen.dart';
import '../home/home_screen.dart';

class MainSwitcherScreen extends StatefulWidget {
  const MainSwitcherScreen({Key? key}) : super(key: key);

  @override
  State<MainSwitcherScreen> createState() => _MainSwitcherScreenState();
}

class _MainSwitcherScreenState extends State<MainSwitcherScreen> {
  int _selectedIndex = 0;
  int selectBtn = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const ManageScreen(),
    const GettingStarted(),
    const ActivityScreen(),
    const AccountSwitchScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: kBackgroundColor,
          // sets the active color of the `BottomNavigationBar` if `Brightness` is light
          primaryColor: kPrimaryColor,
          textTheme: Theme.of(context).textTheme.copyWith(
                caption: const TextStyle(color: kPrimaryColor),
              ),
        ),
        child: BottomNavigationBar(
          iconSize: 20.0,
          backgroundColor: kBackgroundColor,
          type: BottomNavigationBarType.shifting,
          selectedLabelStyle: const TextStyle(
            color: kPrimaryColor,
            fontFamily: kDefaultFont,
            fontWeight: FontWeight.normal,
          ),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _selectedIndex == 0 ? kPrimaryColor : kPlaceholderColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: _selectedIndex == 1 ? kPrimaryColor : kPlaceholderColor,
              ),
              label: 'Manage',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.my_location,
                color: _selectedIndex == 2 ? kPrimaryColor : kPlaceholderColor,
              ),
              label: 'Logistics',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: _selectedIndex == 3 ? kPrimaryColor : kPlaceholderColor,
              ),
              label: 'Activity',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: _selectedIndex == 4 ? kPrimaryColor : kPlaceholderColor,
              ),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: kWhiteColor,
          selectedItemColor: kPrimaryColor,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  AnimatedContainer navigationBar() {
    return AnimatedContainer(
      height: 70.0,
      duration: const Duration(milliseconds: 400),
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(selectBtn == 0 ? 0.0 : 20.0),
          topRight: Radius.circular(
              selectBtn == bottomBarMenus.length - 1 ? 0.0 : 20.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int i = 0; i < bottomBarMenus.length; i++)
            GestureDetector(
              onTap: () => setState(() => selectBtn = i),
              child: iconBtn(i),
            ),
        ],
      ),
    );
  }

  SizedBox iconBtn(int i) {
    bool isActive = selectBtn == i ? true : false;
    var height = isActive ? 60.0 : 0.0;
    var width = isActive ? 50.0 : 0.0;
    return SizedBox(
      width: 75.0,
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
            child: Icon(
              bottomBarMenus[i].iconData,
              color: isActive ? kPrimaryColor : kPlaceholderColor,
              size: 24.0,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              bottomBarMenus[i].name,
              style: TextStyle(
                color: isActive ? kPrimaryColor : kPlaceholderColor,
                fontFamily: kDefaultFont,
                fontSize: 12.0,
                fontWeight: isActive ? FontWeight.w500 : FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
