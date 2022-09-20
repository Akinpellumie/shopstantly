import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:sticky_headers/sticky_headers.dart';

import '../../../../../components/general_post_card.dart';
import '../../../../../widgets/custom_three_tab.dart';
import '../../../../home/widgets/audio_view.dart';
import '../../../../home/widgets/feed_view.dart';
import '../../../../home/widgets/video_view.dart';

class OwnerPostView extends StatefulWidget {
  const OwnerPostView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<OwnerPostView> createState() => _OwnerPostViewState();
}

class _OwnerPostViewState extends State<OwnerPostView> {
  int threeTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Flexible(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 1,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return StickyHeader(
              header: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                width: size.width,
                margin: const EdgeInsets.only(bottom: 10.0),
                color: kBackgroundColor,
                child: CustomThreeTab(
                  size: size,
                  firstTabText: 'Feed',
                  secondTabText: 'Video',
                  thirdTabText: 'Audio',
                  callback: (val) => setState(
                    () {
                      threeTabIndex = val;
                      // updateViewOnTabChange(
                      //     widget.customerViewModel, val, widget.caller);
                    },
                  ),
                ),
              ),
              content: getDisplayWidget(size),
            );
          }),
    );
  }

  Widget getDisplayWidget(Size size) {
    switch (threeTabIndex) {
      case 0:
        return FeedView(
          size: size,
          showStatus: false,
        );
      case 1:
        return VideoView(
          size: size,
        );
      case 2:
        return AudioView(
          size: size,
        );
      default:
        return FeedView(
          size: size,
          showStatus: false,
        );
    }
  }
}
