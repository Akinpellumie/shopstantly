import 'package:flutter/material.dart';

import '../components/event_card_item.dart';

class EventView extends StatelessWidget {
  const EventView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EventCardItem(size: size),
        const SizedBox(
          height: 15.0,
        ),
        EventCardItem(size: size),
        const SizedBox(
          height: 15.0,
        ),
        EventCardItem(size: size),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
