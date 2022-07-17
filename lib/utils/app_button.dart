import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/dimensions.dart';

enum ButtonType { primary, plain }

class AppButton extends StatelessWidget {
  final ButtonType type;
  final VoidCallback onPressed;
  final String text;

  const AppButton(
      {Key? key,
      required this.type,
      required this.onPressed,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 60.0,
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
              color: type == ButtonType.primary
                  ? Colors.transparent
                  : kPrimaryColor,
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
      return Colors.white;
    default:
      return kPrimaryColor;
  }
}

Color getTextColor(ButtonType type) {
  switch (type) {
    case ButtonType.plain:
      return kPrimaryColor;
    case ButtonType.primary:
      return Colors.white;
    default:
      return Colors.white;
  }
}
