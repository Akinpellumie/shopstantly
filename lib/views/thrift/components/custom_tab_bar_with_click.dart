import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/dimensions.dart';

typedef StringCallback = void Function(String val);

class CustomTabWithClick extends StatefulWidget {
  const CustomTabWithClick({
    Key? key,
    required this.callback,
    required this.screensize,
    required this.firstTabTitle,
    required this.secondTabTitle,
    //required this.press,
  }) : super(key: key);

  //final VoidCallback press;
  final StringCallback callback;
  final Size screensize;
  final String firstTabTitle;
  final String secondTabTitle;

  @override
  State<CustomTabWithClick> createState() => _CustomTabWithClickState();
}

class _CustomTabWithClickState extends State<CustomTabWithClick> {
  String selected = 'photos';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
            top: kDefaultPadding),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                widget.callback('photos');
                setState(
                  () {
                    selected = 'photos';
                  },
                );
              },
              child: SizedBox(
                width: widget.screensize.width / 2 - 35,
                height: 30.0,
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        widget.firstTabTitle,
                        style: TextStyle(
                          color: selected == 'photos'
                              ? kPrimaryColor
                              : kLightGrayColor,
                          fontSize: kRegularText,
                          fontWeight: FontWeight.w500,
                          fontFamily: kDefaultFont,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 1.5,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: selected == 'photos'
                              ? kPrimaryColor
                              : kLightGrayColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //const Spacer(),
            const SizedBox(
              width: 30.0,
            ),
            GestureDetector(
              onTap: () {
                widget.callback('videos');
                setState(
                  () {
                    selected = 'videos';
                  },
                );
              },
              child: SizedBox(
                width: widget.screensize.width / 2 - 35,
                height: 30.0,
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        widget.secondTabTitle,
                        style: TextStyle(
                          color: selected == 'videos'
                              ? kPrimaryColor
                              : kLightGrayColor,
                          fontSize: kRegularText,
                          fontWeight: FontWeight.w500,
                          fontFamily: kDefaultFont,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 1.5,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: selected == 'videos'
                              ? kPrimaryColor
                              : kLightGrayColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
