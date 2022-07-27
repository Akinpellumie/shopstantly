import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/dimensions.dart';

class EventFilterTab extends StatefulWidget {
  const EventFilterTab({
    Key? key,
    required this.eventFilterText,
    required this.size,
    //required this.active,
    required this.activeIndex,
  }) : super(key: key);

  final String eventFilterText;
  final Size size;
  //final bool active;
  final int activeIndex;

  @override
  State<EventFilterTab> createState() => _EventFilterTabState();
}

class _EventFilterTabState extends State<EventFilterTab> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = widget.activeIndex;
        });
      },
      child: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 3.0),
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 5.0,
          ),
          decoration: BoxDecoration(
            color: selectedIndex == widget.activeIndex ? kPrimaryColor : kTabBgColor,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Text(
            widget.eventFilterText,
            style: TextStyle(
              fontFamily: kDefaultFont,
              fontSize: widget.size.height * 0.0150,
              fontWeight: FontWeight.normal,
              color: selectedIndex == widget.activeIndex ? kWhiteColor : kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
