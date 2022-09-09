import 'package:flutter/material.dart';

class CustomRouter {
  static void nextScreen(BuildContext context, String route, {Map? args}) {
    Navigator.of(context).pushNamed(route, arguments: args);
  }

  static void previousScreen(BuildContext context) {
    Navigator.of(context).pop();
  }

  static void gotoMainScreen(BuildContext context, String route) {
    Navigator.of(context).pushNamedAndRemoveUntil(route, (route) => false);
  }

  static void switchBottomNavScreen(BuildContext context, String route) {
    Navigator.of(context).pushReplacementNamed(route);
  }
}
