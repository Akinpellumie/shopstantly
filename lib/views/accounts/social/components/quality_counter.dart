import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';

class QualityCounter extends StatefulWidget {
  const QualityCounter({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<QualityCounter> createState() => _QualityCounterState();
}

int quantity = 1;

class _QualityCounterState extends State<QualityCounter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => minus(),
          icon: const Icon(
            Icons.remove,
            color: kPlaceholderColor,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.0,
              color: kPlaceholderColor,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Text(
            '$quantity',
            style: TextStyle(
              color: kPrimaryTextColor,
              fontSize: widget.size.width * 0.050,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        IconButton(
          onPressed: () => add(),
          icon: const Icon(
            Icons.add,
            color: kPrimaryColor,
          ),
        ),
      ],
    );
  }

  void add() {
    setState(() {
      quantity++;
    });
  }

  void minus() {
    setState(() {
      if (quantity != 1) {
        quantity--;
      }
    });
  }
}
