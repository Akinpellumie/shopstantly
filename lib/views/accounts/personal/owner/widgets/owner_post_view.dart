import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../components/general_post_card.dart';


class OwnerPostView extends StatelessWidget {
  const OwnerPostView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

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
                (context, index) => Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      width: size.width,
                      child: GeneralPostCard(size: size),
                    ),
                childCount: 5,),
          ),
        ],
      ),
    );
  }
}
