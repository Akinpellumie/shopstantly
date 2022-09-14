import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/app_button.dart';
import '../../utils/app_colors.dart';
import '../../utils/base_app_bar.dart';
import '../../utils/custom_router.dart';
import '../../utils/dimensions.dart';

class AddPhotoScreen extends StatefulWidget {
  const AddPhotoScreen({Key? key}) : super(key: key);

  @override
  State<AddPhotoScreen> createState() => _AddPhotoScreenState();
}

class _AddPhotoScreenState extends State<AddPhotoScreen> {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Set Profile',
        appBar: AppBar(),
        showLogo: false,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(
            20.0,
          ),
          child: Column(
            children: [
              const Text(
                "Add a profile photo and a cover photo to your profile.",
                style: TextStyle(
                  color: kDarkColor,
                  fontFamily: kDefaultFont,
                  fontWeight: FontWeight.w400,
                  fontSize: kNormalText,
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: <Widget>[
                  // background image and bottom contents
                  Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: kProfileBannerColor,
                      border: Border.all(color: Colors.white, width: 5.0),
                    ),
                    child: const Center(
                      child: Icon(
                        CupertinoIcons.cloud_download,
                        color: kPlaceholderColor,
                      ),
                    ),
                  ),
                  Positioned(
                    top:
                        100.0, // (background container size) - (circle height / 2)
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kProfileBannerColor,
                        border: Border.all(color: Colors.white, width: 5.0),
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(top: 15.0),
                        child: const Center(
                          child: Icon(
                            CupertinoIcons.cloud_download,
                            color: kPlaceholderColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 90.0,
              ),
              AppButton(
                text: "Next",
                type: ButtonType.primary,
                onPressed: () {
                  CustomRouter.nextScreen(context, "/chooseLocation");
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
