import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/dimensions.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = kPrimaryColor;
  final String title;
  final AppBar appBar;
  final bool showLogo;
  final bool centerTitle;
  //final List<Widget> widgets;

  /// you can add more fields that meet your needs

  const BaseAppBar({
    Key? key,
    required this.title,
    required this.appBar,
    required this.showLogo,
    this.centerTitle = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kBackgroundColor,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: kDarkColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: showLogo
          ? Image.asset(
              'assets/images/shoplogo.png',
              fit: BoxFit.fitHeight,
              height: 60.0,
            )
          : Align(
              alignment: centerTitle ? Alignment.center : Alignment.centerLeft,
              child: Text(
                title,
                style: const TextStyle(
                  fontFamily: kDefaultFont,
                  color: kDarkColor,
                  fontWeight: FontWeight.w500,
                  fontSize: kNormalText,
                ),
              ),
            ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
