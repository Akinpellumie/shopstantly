import 'package:flutter/material.dart';
import 'package:shopstantly_app/views/logistics/widgets/success_widget.dart';

import '../../utils/app_button.dart';
import '../../utils/app_colors.dart';
import 'widgets/face_verification_widget.dart';

class FaceVerificationScreen extends StatefulWidget {
  const FaceVerificationScreen({Key? key}) : super(key: key);

  @override
  State<FaceVerificationScreen> createState() => _FaceVerificationScreenState();
}

class _FaceVerificationScreenState extends State<FaceVerificationScreen> {
  int stage = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.keyboard_backspace_rounded,
          color: kPrimaryColor,
          size: size.height * 0.045,
        ),
        elevation: 0.0,
        backgroundColor: kBackgroundColor,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Registration',
            style: TextStyle(
              fontSize: size.height * 0.020,
              fontWeight: FontWeight.w500,
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              controller: ScrollController(
                keepScrollOffset: true,
              ),
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, _index) => Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      child: Column(
                        children: [
                          stage == 0
                              ? FaceVerificationWidget(
                                  size: size,
                                )
                              : SuccessWidget(size: size),
                        ],
                      ),
                    ),
                    childCount: 1,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: AppButton(
              text: stage == 0 ? "Confirm Verification" : "Ok!",
              type: ButtonType.primary,
              onPressed: () {
                setState(() {
                  if (stage == 0) {
                    stage = 1;
                  }
                });
                //CustomRouter.nextScreen(context, "/logistic-verfiy");
              },
            ),
          ),
        ],
      ),
    );
  }
}
