import 'package:flutter/material.dart';

class ConditionalRender extends StatelessWidget {
  final Widget child;
  final bool showChild;
  final Widget defaultWidget;

  const ConditionalRender({
    Key? key,
    required this.child,
    this.showChild = false,
    this.defaultWidget = const SizedBox.shrink(),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return showChild ? child : defaultWidget;
  }
}