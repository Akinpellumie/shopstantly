import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/post_card.dart';

class PostView extends StatefulWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
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
