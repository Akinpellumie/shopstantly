import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../utils/app_colors.dart';
import '../utils/dimensions.dart';

class ThemeHelper {
  InputDecoration textInputDecoration([
    String lableText = "",
    String hintText = "",
    Widget? prefixIcon,
    bool showBorder = true,
    Color bgColor = kBackgroundColor,
  ]) {
    return InputDecoration(
      //iconColor: kWhiteColor,
      labelText: lableText,
      labelStyle: const TextStyle(
          color: kPlaceholderColor,
          fontWeight: FontWeight.normal,
          fontFamily: kDefaultFont),
      hintText: hintText,
      hintStyle: const TextStyle(
          color: kPlaceholderColor,
          fontWeight: FontWeight.normal,
          fontFamily: kDefaultFont),
      fillColor: bgColor,
      filled: true,
      contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.0),
        borderSide: BorderSide(
          color:
              showBorder ? kPrimaryColor.withOpacity(0.4) : Colors.transparent,
          width: 0.5,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.0),
        borderSide: BorderSide(
          color: showBorder ? kEntryBorderColor : Colors.transparent,
          width: 1.0,
        ),
      ),
      prefixIcon: prefixIcon,
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.0),
        borderSide: BorderSide(
          color: showBorder ? Colors.red : Colors.transparent,
          width: 1.0,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.0),
        borderSide: BorderSide(
          color: showBorder ? Colors.red : Colors.transparent,
          width: 1.0,
        ),
      ),
    );
  }

  InputDecoration postInputDecoration([
    String lableText = "",
    String hintText = "",
    bool showBorder = true,
    Color bgColor = kBackgroundColor,
  ]) {
    return InputDecoration(
      //iconColor: kWhiteColor,
      labelText: lableText,
      labelStyle: const TextStyle(
          color: kPostEntryTextColor,
          backgroundColor: kPostEntryBgColor,
          fontWeight: FontWeight.normal,
          fontFamily: kDefaultFont),
      hintText: hintText,
      hintStyle: const TextStyle(
          color: kPostEntryTextColor,
          fontWeight: FontWeight.normal,
          fontFamily: kDefaultFont),
      fillColor: bgColor,
      filled: true,
      contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.0),
        borderSide: BorderSide(
          color:
              showBorder ? kPrimaryColor.withOpacity(0.4) : Colors.transparent,
          width: 0.5,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.0),
        borderSide: const BorderSide(
          color: Colors.transparent,
          width: 1.0,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.0),
        borderSide: BorderSide(
          color: showBorder ? Colors.red : Colors.transparent,
          width: 1.0,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.0),
        borderSide: BorderSide(
          color: showBorder ? Colors.red : Colors.transparent,
          width: 1.0,
        ),
      ),
    );
  }

  InputDecoration amountInputDecoration(
      [String lableText = "", String hintText = "", String prefix = "N "]) {
    return InputDecoration(
      //iconColor: kWhiteColor,
      prefixText: prefix,
      labelText: lableText,
      labelStyle:
          const TextStyle(color: kPlaceholderColor, fontFamily: kDefaultFont),
      hintText: hintText,
      hintStyle:
          const TextStyle(color: kPlaceholderColor, fontFamily: kDefaultFont),
      fillColor: kBackgroundColor,
      filled: true,
      contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.0),
        borderSide: BorderSide(color: kPrimaryColor.withOpacity(0.5)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.0),
        borderSide: const BorderSide(
          color: kEntryBorderColor,
          width: 1.0,
        ),
      ),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0),
          borderSide: const BorderSide(color: Colors.red, width: 1.0)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0),
          borderSide: const BorderSide(color: Colors.red, width: 1.0)),
    );
  }

  BoxDecoration inputBoxDecorationShaddow() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(7.0),
      //border: Border.all(color: kEntryBorderColor, width: 1.0),
    );
  }

  BoxDecoration editorBoxDecorationShaddow() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(7.0),
    );
  }

  BoxDecoration buttonBoxDecoration(BuildContext context,
      [String color1 = "", String color2 = ""]) {
    Color c1 = kPrimaryColor;
    Color c2 = kPrimaryColor;
    if (color1.isEmpty == false) {
      c1 = HexColor(color1);
    }
    if (color2.isEmpty == false) {
      c2 = HexColor(color2);
    }

    return BoxDecoration(
      // ignore: prefer_const_literals_to_create_immutables
      boxShadow: [
        const BoxShadow(
            color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
      ],
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: const [0.0, 1.0],
        colors: [
          c1,
          c2,
        ],
      ),
      color: kPrimaryColor.withOpacity(0.3),
      borderRadius: BorderRadius.circular(20.0),
    );
  }

  ButtonStyle buttonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      minimumSize: MaterialStateProperty.all(const Size(50, 50)),
      backgroundColor: MaterialStateProperty.all(kPrimaryColor),
      shadowColor: MaterialStateProperty.all(Colors.transparent),
    );
  }

  AlertDialog alartDialog(String title, String content, BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          child: const Text(
            "OK",
            style: TextStyle(color: Colors.white),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black38)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  InputDecoration chatEntryInputDecoration(
      [String lableText = "",
      String hintText = "",
      Widget? _suffixIcon,
      Widget? _prefixIcon,
      double iconSize = 20]) {
    return InputDecoration(
      //iconColor: kWhiteColor,
      labelText: lableText,
      labelStyle:
          const TextStyle(color: kPlaceholderColor, fontFamily: kDefaultFont),
      hintText: hintText,
      hintStyle:
          const TextStyle(color: kPlaceholderColor, fontFamily: kDefaultFont),
      fillColor: kPrimaryColor,
      filled: true,
      suffixIconConstraints:
          BoxConstraints(minHeight: iconSize, minWidth: iconSize),
      prefixIconConstraints:
          BoxConstraints(minHeight: iconSize, minWidth: iconSize),
      suffixIcon: _suffixIcon,
      prefixIcon: _prefixIcon,
      contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.0),
        borderSide: const BorderSide(color: Colors.transparent),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.0),
        borderSide: const BorderSide(
          color: Colors.transparent,
          width: 1.0,
        ),
      ),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0),
          borderSide: const BorderSide(color: Colors.red, width: 1.0)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0),
          borderSide: const BorderSide(color: Colors.red, width: 1.0)),
    );
  }

  InputDecoration passwordInputDecoration(
      [String lableText = "",
      String hintText = "",
      Widget? suffixIcon,
      Widget? prefixIcon]) {
    return InputDecoration(
        //iconColor: kWhiteColor,
        labelText: lableText,
        labelStyle: const TextStyle(
          color: kPlaceholderColor,
          fontWeight: FontWeight.normal,
          fontFamily: kDefaultFont,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kPlaceholderColor,
          fontWeight: FontWeight.normal,
          fontFamily: kDefaultFont,
        ),
        fillColor: kBackgroundColor,
        filled: true,
        contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0),
          borderSide: BorderSide(
            color: kPrimaryColor.withOpacity(0.5),
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0),
          borderSide: const BorderSide(color: kEntryBorderColor, width: 1.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0),
          borderSide: const BorderSide(color: Colors.red, width: 1.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0),
          borderSide: const BorderSide(color: Colors.red, width: 1.0),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon);
  }

  void setState(Null Function() param0) {}
}

class LoginFormStyle {}
