import 'package:flutter/material.dart';

import '../../data/bottom_bar_menus.dart';
import '../../utils/app_colors.dart';
import '../../utils/custom_paint.dart';
import '../../utils/dimensions.dart';

class AnimatedBar extends StatefulWidget {
  final ValueChanged<int> onTabSelected;
  const AnimatedBar({Key? key, required this.onTabSelected}) : super(key: key);

  @override
  State<AnimatedBar> createState() => _AnimatedBarState();
}

class _AnimatedBarState extends State<AnimatedBar> {
  int selectBtn = 0;
  _updateIndex(int index) {
    widget.onTabSelected(index);
    setState(() {
      selectBtn = index;
    });
  }
  @override
  Widget build(BuildContext context) {
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
              onTap: _updateIndex(i),
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
