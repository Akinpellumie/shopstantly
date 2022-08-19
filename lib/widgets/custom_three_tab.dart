import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

typedef IntCallback = void Function(int val);

class CustomThreeTab extends StatefulWidget {
  const CustomThreeTab({
    Key? key,
    required this.size,
    required this.firstTabText,
    required this.secondTabText,
    required this.thirdTabText,
    required this.callback,
  }) : super(key: key);
  final Size size;
  final String firstTabText;
  final String secondTabText;
  final String thirdTabText;
  final IntCallback callback;

  @override
  State<CustomThreeTab> createState() => _CustomThreeTabState();
}

class _CustomThreeTabState extends State<CustomThreeTab> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 5.0,
        vertical: 4.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: kPlaceholderColor.withOpacity(0.5),
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              widget.callback(0);
              setState(() {
                selectedIndex = 0;
              });
            },
            child: Container(
              width: widget.size.width / 3 - 20,
              padding: const EdgeInsets.symmetric(
                //vertical: 5.0,
                horizontal: 8.0,
              ),
              height: 35.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: selectedIndex == 0 ? kPrimaryColor : Colors.transparent,
              ),
              child: Center(
                child: Text(
                  widget.firstTabText,
                  style: TextStyle(
                    color: selectedIndex == 0 ? kWhiteColor : kPrimaryColor,
                    fontSize: widget.size.height * 0.0150,
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: selectedIndex == 2,
            child: Container(
              width: 0.5,
              height: 25.0,
              decoration: const BoxDecoration(
                color: kPlaceholderColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.callback(1);
              setState(() {
                selectedIndex = 1;
              });
            },
            child: Container(
              width: widget.size.width / 3 - 20,
              padding: const EdgeInsets.symmetric(
                //vertical: 5.0,
                horizontal: 8.0,
              ),
              height: 35.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: selectedIndex == 1 ? kPrimaryColor : Colors.transparent,
              ),
              child: Center(
                child: Text(
                  widget.secondTabText,
                  style: TextStyle(
                    color: selectedIndex == 1 ? kWhiteColor : kPrimaryColor,
                    fontSize: widget.size.height * 0.0150,
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: selectedIndex == 0,
            child: Container(
              width: 0.5,
              height: 25.0,
              decoration: const BoxDecoration(
                color: kPlaceholderColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.callback(2);
              setState(() {
                selectedIndex = 2;
              });
            },
            child: Container(
              width: widget.size.width / 3 - 20,
              padding: const EdgeInsets.symmetric(
                //vertical: 5.0,
                horizontal: 8.0,
              ),
              height: 35.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: selectedIndex == 2 ? kPrimaryColor : Colors.transparent,
              ),
              child: Center(
                child: Text(
                  widget.thirdTabText,
                  style: TextStyle(
                    color: selectedIndex == 2 ? kWhiteColor : kPrimaryColor,
                    fontSize: widget.size.height * 0.0150,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
