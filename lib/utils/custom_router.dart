import 'package:flutter/material.dart';

class CustomRouter {
  static void nextScreen(BuildContext context, String route) {
    Navigator.of(context).pushNamed(route);
  }
}
