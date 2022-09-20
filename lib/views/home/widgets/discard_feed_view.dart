import 'package:flutter/material.dart';

import '../../../components/general_post_card.dart';
import '../../../utils/app_colors.dart';

class DiscardFeedView extends StatefulWidget {
  final Size size;
  const DiscardFeedView({Key? key, required this.size}) : super(key: key);

  @override
  State<DiscardFeedView> createState() => _DiscardFeedViewState();
}

class _DiscardFeedViewState extends State<DiscardFeedView> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            GeneralPostCard(
              size: widget.size,
              hasBoostPost: index.isEven,
            ),
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Container(
          height: 3.0,
          margin: const EdgeInsets.symmetric(vertical: 15.0),
          width: widget.size.width,
          color: kLightGrayColor.withOpacity(0.45),
        );
      },
      itemCount: 6,
    );
  }
}
