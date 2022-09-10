import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/dimensions.dart';

enum ButtonType { primary, plain, disabled }

class AppButton extends StatelessWidget {
  final ButtonType type;
  final VoidCallback onPressed;
  final String text;
  final double btnHeight;
  final double btnWidth;

  const AppButton({
    Key? key,
    required this.type,
    required this.onPressed,
    required this.text,
    this.btnHeight = 50.0,
    this.btnWidth = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: btnWidth,
        height: btnHeight,
        decoration: BoxDecoration(
          color: getButtonColor(type),
          borderRadius: const BorderRadius.all(
            Radius.circular(7.0),
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(169, 176, 185, 0.42),
              spreadRadius: 0,
              blurRadius: 4.0,
              offset: Offset(0, 0.5),
            )
          ],
          border: Border.all(
              color:
                  type == ButtonType.plain ? kPrimaryColor : Colors.transparent,
              width: 1.0),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: getTextColor(type),
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                fontFamily: kDefaultFont),
          ),
        ),
      ),
    );
  }
}

Color getButtonColor(ButtonType type) {
  switch (type) {
    case ButtonType.primary:
      return kPrimaryColor;
    case ButtonType.plain:
      return kWhiteColor;
    case ButtonType.disabled:
      return kLightGrayColor;
    default:
      return kPrimaryColor;
  }
}

Color getTextColor(ButtonType type) {
  switch (type) {
    case ButtonType.plain:
      return kPrimaryColor;
    case ButtonType.primary:
      return kWhiteColor;
    case ButtonType.disabled:
      return kPrimaryColor;
    default:
      return kWhiteColor;
  }
}
