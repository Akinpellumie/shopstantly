import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedIconTheme: const IconThemeData(
        color: kPlaceholderColor,
      ),
      selectedIconTheme: const IconThemeData(
        color: kPrimaryColor,
      ),
      items: [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(CupertinoIcons.home),
        ),
        BottomNavigationBarItem(
          label: "Shops",
          icon: Icon(
            CupertinoIcons.bag,
          ),
        ),
        BottomNavigationBarItem(
          label: "Manage",
          icon: Icon(
            CupertinoIcons.cart,
          ),
        ),
        BottomNavigationBarItem(
          label: "Dashboard",
          icon: Icon(
            CupertinoIcons.dot_square,
          ),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: Icon(
            CupertinoIcons.profile_circled,
          ),
        ),
      ],
    );
  }
}
