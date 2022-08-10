import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AssetsPath.loading,
          width: size.width / 0.17,
          height: size.height * 0.30,
        ),
        Text(
          'Review In Progress...',
          style: TextStyle(
            fontSize: size.height * 0.0150,
            fontWeight: FontWeight.w300,
            color: kPrimaryColor,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          'Your Verification will take few hours. Kindly check your mail for more information.',
          style: TextStyle(
            fontSize: size.height * 0.0150,
            fontWeight: FontWeight.w300,
            color: kPrimaryColor,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
