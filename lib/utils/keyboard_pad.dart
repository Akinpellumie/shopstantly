import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/assets_path.dart';

import '../models/general/keyboard_model.dart';
import 'dimensions.dart';

List<List<KeyboardModel>> keyboardKeys = [
  [
    KeyboardModel(
      value: '1',
      type: 'number',
      widget: Container(
        //height: 20.0,
        //width: 20.0,
        margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: kPrimaryColor,
            width: 1.0,
          ),
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Text(
            '1',
            style: TextStyle(
              color: kPrimaryColor,
              fontFamily: kDefaultFont,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    ),
    KeyboardModel(
      value: '2',
      type: 'number',
      widget: Container(
        //height: 20.0,
        //width: 20.0,
        margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: kPrimaryColor,
            width: 1.0,
          ),
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Text(
            '2',
            style: TextStyle(
              color: kPrimaryColor,
              fontFamily: kDefaultFont,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    ),
    KeyboardModel(
      value: '3',
      type: 'number',
      widget: Container(
        //height: 20.0,
        //width: 20.0,
        margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: kPrimaryColor,
            width: 1.0,
          ),
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Text(
            '3',
            style: TextStyle(
              color: kPrimaryColor,
              fontFamily: kDefaultFont,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    ),
  ],
  [
    KeyboardModel(
      value: '4',
      type: 'number',
      widget: Container(
        //height: 20.0,
        //width: 20.0,
        margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: kPrimaryColor,
            width: 1.0,
          ),
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Text(
            '4',
            style: TextStyle(
              color: kPrimaryColor,
              fontFamily: kDefaultFont,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    ),
    KeyboardModel(
      value: '5',
      type: 'number',
      widget: Container(
        //height: 20.0,
        //width: 20.0,
        margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: kPrimaryColor,
            width: 1.0,
          ),
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Text(
            '5',
            style: TextStyle(
              color: kPrimaryColor,
              fontFamily: kDefaultFont,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    ),
    KeyboardModel(
      value: '6',
      type: 'number',
      widget: Container(
        //height: 20.0,
        //width: 20.0,
        margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: kPrimaryColor,
            width: 1.0,
          ),
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Text(
            '6',
            style: TextStyle(
              color: kPrimaryColor,
              fontFamily: kDefaultFont,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    ),
  ],
  [
    KeyboardModel(
      value: '7',
      type: 'number',
      widget: Container(
        //height: 20.0,
        //width: 20.0,
        margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: kPrimaryColor,
            width: 1.0,
          ),
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Text(
            '7',
            style: TextStyle(
              color: kPrimaryColor,
              fontFamily: kDefaultFont,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    ),
    KeyboardModel(
      value: '8',
      type: 'number',
      widget: Container(
        //height: 20.0,
        //width: 20.0,
        margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: kPrimaryColor,
            width: 1.0,
          ),
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Text(
            '8',
            style: TextStyle(
              color: kPrimaryColor,
              fontFamily: kDefaultFont,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    ),
    KeyboardModel(
      value: '9',
      type: 'number',
      widget: Container(
        //height: 20.0,
        //width: 20.0,
        margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: kPrimaryColor,
            width: 1.0,
          ),
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Text(
            '9',
            style: TextStyle(
              color: kPrimaryColor,
              fontFamily: kDefaultFont,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    ),
  ],
  [
    KeyboardModel(
      value: 'bio',
      type: 'icon',
      widget: Container(
        //height: 20.0,
        //width: 20.0,
        margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
          color: kPrimaryColor,
          // border: Border.all(
          //   color: kPrimaryColor,
          //   width: 2.0,
          // ),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: SvgPicture.asset(
            AssetsPath.faceID,
            color: kWhiteColor,
          ),
        ),
      ),
    ),
    KeyboardModel(
      value: '0',
      type: 'number',
      widget: Container(
        //height: 20.0,
        //width: 20.0,
        margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: kPrimaryColor,
            width: 1.0,
          ),
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Text(
            '0',
            style: TextStyle(
              color: kPrimaryColor,
              fontFamily: kDefaultFont,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    ),
    KeyboardModel(
      value: 'del',
      type: 'icon',
      widget: Container(
        //height: 20.0,
        //width: 20.0,
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.only(bottom: 10.0),
        decoration: const BoxDecoration(
          color: kPrimaryColor,
          // border: Border.all(
          //   color: kPrimaryColor,
          //   width: 2.0,
          // ),
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Icon(
            Icons.backspace,
            color: kWhiteColor,
          ),
        ),
      ),
    ),
  ],
];
