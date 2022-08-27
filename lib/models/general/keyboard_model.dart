import 'package:flutter/material.dart';

class KeyboardModel {
  String value;
  String type;
  Widget widget;

  KeyboardModel(
      {required this.value, required this.type, required this.widget});
}

// List<KeyboardModel> pads = [
//   KeyboardModel(
//     value: "0",
//     type: "number",
//   ),
//   KeyboardModel(
//     value: "1",
//     type: "number",
//   ),
//   KeyboardModel(
//     value: "2",
//     type: "number",
//   ),
//   KeyboardModel(
//     value: "3",
//     type: "number",
//   ),
//   KeyboardModel(
//     value: "4",
//     type: "number",
//   ),
//   KeyboardModel(
//     value: "5",
//     type: "number",
//   ),
//   KeyboardModel(
//     value: "6",
//     type: "number",
//   ),
//   KeyboardModel(
//     value: "7",
//     type: "number",
//   ),
//   KeyboardModel(
//     value: "8",
//     type: "number",
//   ),
//   KeyboardModel(
//     value: "9",
//     type: "number",
//   ),
//   KeyboardModel(
//     value: "del",
//     type: "btn",
//   ),
//   KeyboardModel(
//     value: "bio",
//     type: "btn",
//   ),
// ];
