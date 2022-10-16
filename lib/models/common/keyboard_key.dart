import 'package:flutter/material.dart';
import 'package:shopstantly_app/models/common/keyboard_model.dart';

class KeyboardKey extends StatefulWidget {
  final dynamic label;
  final dynamic value;
  final KeyboardModel model;
  final ValueSetter<KeyboardModel> onTap;

  const KeyboardKey({Key? key, 
    required this.label,
    required this.value,
    required this.model,
    required this.onTap,
  }) : super(key: key);

  @override
  _KeyboardKeyState createState() => _KeyboardKeyState();
}

class _KeyboardKeyState extends State<KeyboardKey> {

  renderLabel(){
     return widget.label;
    // if(widget.label == 'del'){
    //   return widget.label;
    // }

    // return Text(
    //   widget.label,
    //   style:const TextStyle(
    //     fontSize: 20.0,
    //     fontFamily: kDefaultFont,
    //     fontWeight: FontWeight.bold,
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        widget.onTap(widget.model);
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