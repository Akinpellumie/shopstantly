import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/dimensions.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({Key? key}) : super(key: key);

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
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
            'Make a Post',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontFamily: kDefaultFont,
                fontSize: kNormalText,
                color: kPrimaryTextColor,
                fontWeight: FontWeight.w500),
          ),
        ),
        actions: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(right: 10.0),
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 4.0,
              ),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(7.0),
              ),
              child: const Text(
                'Post',
                style: TextStyle(
                    color: kWhiteColor,
                    fontFamily: kDefaultFont,
                    fontSize: kRegularText,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
