import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../components/event_card.dart';

class UserEventView extends StatefulWidget {
  const UserEventView({Key? key}) : super(key: key);

  @override
  State<UserEventView> createState() => _UserEventViewState();
}

class _UserEventViewState extends State<UserEventView> {
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
