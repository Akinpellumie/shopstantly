import 'package:flutter/material.dart';
import 'package:shopstantly_app/models/general/keyboard_model.dart';
import 'package:shopstantly_app/utils/dimensions.dart';

class KeyboardKey extends StatefulWidget {
  final dynamic label;
  final dynamic value;
  final ValueSetter<KeyboardModel> onTap;

  const KeyboardKey({Key? key, 
    required this.label,
    required this.value,
    required this.onTap,
  }) : super(key: key);

  @override
  _KeyboardKeyState createState() => _KeyboardKeyState();
}

class _KeyboardKeyState extends State<KeyboardKey> {

  renderLabel(){
    if(widget.label is Widget){
      return widget.label;
    }

    return Text(
      widget.label,
      style:const TextStyle(
        fontSize: 20.0,
        fontFamily: kDefaultFont,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        widget.onTap(widget.value);
      },
      child: AspectRatio(
        aspectRatio: 2,
        child: Center(
          child: renderLabel(),
        ),
      ),
    );
  }
}