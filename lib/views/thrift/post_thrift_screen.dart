import 'package:flutter/material.dart';
import 'package:shopstantly_app/views/thrift/components/custom_tab_bar_with_click.dart';

import '../../utils/app_colors.dart';
import '../../utils/dimensions.dart';
import 'components/post_photos_widget.dart';
import 'components/post_videos_widget.dart';

class PostThriftScreen extends StatefulWidget {
  const PostThriftScreen({Key? key}) : super(key: key);

  @override
  State<PostThriftScreen> createState() => _PostThriftScreenState();
}

class _PostThriftScreenState extends State<PostThriftScreen> {
  String currentTab = "photos";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.data_saver_on_outlined,
            color: kDarkColor,
          ),
          onPressed: () {
            //Navigator.pop(context);
          },
        ),
        elevation: 0.0,
        backgroundColor: kBackgroundColor,
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Post Thrift',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontFamily: kDefaultFont,
                fontSize: kNormalText,
                color: kPrimaryTextColor,
                fontWeight: FontWeight.w500),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_outlined,
              color: kIconColor,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            CustomTabWithClick(
              callback: (val) => setState(
                () {
                  currentTab = val;
                  // updateViewOnTabChange(
                  //     widget.customerViewModel, val, widget.caller);
                },
              ),
              screensize: size,
              firstTabTitle: 'Photos',
              secondTabTitle: 'Videos',
            ),
            Visibility(
                visible: currentTab == 'videos',
                child: PostVideosWidget(size: size)),
            Visibility(
                visible: currentTab == 'photos',
                child: PostPhotosWidget(size: size)),
          ],
        ),
      ),
    );
  }
}
