import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/post_card.dart';

class PostView extends StatefulWidget {
  final Size size;
  const PostView({Key? key, required this.size}) : super(key: key);

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: CustomScrollView(
        controller: ScrollController(
          keepScrollOffset: true,
        ),
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) =>
                    PostCard(size: widget.size, currentIndex: index),
                childCount: 10),
          ),
        ],
      ),
    );
  }
}
