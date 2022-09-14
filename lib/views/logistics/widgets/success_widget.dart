import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';

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
        SizedBox(
          height: size.height * 0.10,
        ),
        Stack(
          clipBehavior: Clip.none,
          fit: StackFit.passthrough,
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                AssetsPath.successIcon,
                width: size.height * 0.25,
                height: size.height * 0.25,
              ),
            ),
            Positioned(
              left: 30.0,
              top: 40.0,
              child: SvgPicture.asset(
                AssetsPath.starCosmos,
                color: kOrangeColor,
                height: 20.0,
                width: 20.0,
              ),
            ),
            Positioned(
              left: size.width / 2 + 35,
              top: -48.0,
              child: SvgPicture.asset(
                AssetsPath.starCosmos,
                color: kPrimaryColor,
                height: 20.0,
                width: 20.0,
              ),
            ),
            Positioned(
              right: 30.0,
              top: 40.0,
              child: SvgPicture.asset(
                AssetsPath.starCosmos,
                color: kOrangeColor,
                height: 20.0,
                width: 20.0,
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 50.0,
              child: SvgPicture.asset(
                AssetsPath.starCosmos,
                color: kPrimaryColor,
                height: 15.0,
                width: 15.0,
              ),
            ),
            Positioned(
              top: -30.0,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Welcome!!!',
                  style: TextStyle(
                    fontSize: size.height * 0.025,
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30.0,
        ),
        Text(
          'Your documents have been recieved and under review. You will recieve a notification of the result soon. \nThank you!',
          style: TextStyle(
            fontSize: size.height * 0.0190,
            fontWeight: FontWeight.w500,
            color: kPrimaryColor,
            fontStyle: FontStyle.normal,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 50.0,
        ),
      ],
    );
  }
}
