import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/post_card.dart';

class OwnerPostView extends StatefulWidget {
  const OwnerPostView({Key? key}) : super(key: key);

  @override
  State<OwnerPostView> createState() => _OwnerPostViewState();
}

class _OwnerPostViewState extends State<OwnerPostView> {
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
                (context, index) => PostCard(size: size, currentIndex: index),
                childCount: 10),
          ),
        ],
      ),
    );
  }
}
