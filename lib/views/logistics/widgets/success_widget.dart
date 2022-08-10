import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_button.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/custom_router.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          AssetsPath.success,
          width: size.height * 0.25,
          height: size.height * 0.25,
        ),
        const SizedBox(
          height: 30.0,
        ),
        Text(
          'Your documents has been reviewed and approved...',
          style: TextStyle(
            fontSize: size.height * 0.0150,
            fontWeight: FontWeight.w300,
            color: kPrimaryColor,
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 50.0,
        ),
        Text(
          'Welcome on Board!',
          style: TextStyle(
            fontSize: size.height * 0.0150,
            fontWeight: FontWeight.w300,
            color: kPrimaryColor,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 50.0,
        ),
        AppButton(
          text: "Proceed",
          type: ButtonType.primary,
          onPressed: () {
            CustomRouter.nextScreen(context, "/logistic");
          },
        ),
      ],
    );
  }
}
