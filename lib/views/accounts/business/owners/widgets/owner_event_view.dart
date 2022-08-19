import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../components/event_card.dart';

class OwnerEventView extends StatefulWidget {
  const OwnerEventView({Key? key}) : super(key: key);

  @override
  State<OwnerEventView> createState() => _OwnerEventViewState();
}

class _OwnerEventViewState extends State<OwnerEventView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Flexible(
      child: CustomScrollView(
        controller: ScrollController(
          keepScrollOffset: true,
        ),
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, _index) => EventCard(size: size, index: _index),
                childCount: 5),
          ),
        ],
      ),
    );
  }
}
