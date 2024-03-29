import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/app_colors.dart';

class MainPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = kPrimaryColor;
  final Widget title;
  final Widget leading;
  final AppBar appBar;
  final List<Widget> actions;
  //final List<Widget> widgets;

  /// you can add more fields that meet your needs

  const MainPageAppBar({
    Key? key,
    required this.title,
    required this.appBar,
    required this.actions,
    required this.leading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kBackgroundColor,
      title: title,
      leadingWidth: 40.0,
      centerTitle: false,
      titleSpacing: 0.0,
      actions: actions,
      leading: leading,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
