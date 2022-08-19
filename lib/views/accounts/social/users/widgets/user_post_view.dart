import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/post_card.dart';

class UserPostView extends StatefulWidget {
  const UserPostView({Key? key}) : super(key: key);

  @override
  State<UserPostView> createState() => _UserPostViewState();
}

class _UserPostViewState extends State<UserPostView> {
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
