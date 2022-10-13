import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/app_colors.dart';

class OtpTextBox extends StatefulWidget {
  final bool first;
  final bool last;
  final double widthSize;
  final TextEditingController textEntryController;
  const OtpTextBox({
    Key? key,
    required this.first,
    required this.last,
    required this.widthSize,
    required this.textEntryController,
  }) : super(key: key);

  @override
  State<OtpTextBox> createState() => _OtpTextBoxState();
}

class _OtpTextBoxState extends State<OtpTextBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.0,
      width: widget.widthSize,
      color: kBackgroundColor,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          controller: widget.textEntryController,
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && widget.last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && widget.first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(width: 2, color: kEntryBorderColor),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: kPrimaryColor),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
