import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_button.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';

class FaceVerificationWidget extends StatelessWidget {
  const FaceVerificationWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DottedBorder(
          color: kPrimaryColor.withOpacity(0.5),
          strokeWidth: 1,
          strokeCap: StrokeCap.round,
          dashPattern: const [20, 20],
          radius: const Radius.circular(30.0),
          child: SizedBox(
            height: size.height * 0.30,
            width: size.width / 1.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AssetsPath.faceID,
                  color: kPlaceholderColor,
                  height: size.height * 0.10,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Face ID',
                  style: TextStyle(
                    fontSize: size.height * 0.0140,
                    fontWeight: FontWeight.w300,
                    color: kPlaceholderColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 50.0,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Take a picture of your face. Kindly stay in a well lit environment and dont put on sun shades. ',
            style: TextStyle(
              fontSize: size.height * 0.0140,
              fontWeight: FontWeight.w300,
              color: kPrimaryColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 50.0,
        ),
        AppButton(
          text: "Confirm Verification",
          type: ButtonType.primary,
          onPressed: () {
            //CustomRouter.nextScreen(context, "/logistic-verfiy");
          },
        ),
      ],
    );
  }
}
