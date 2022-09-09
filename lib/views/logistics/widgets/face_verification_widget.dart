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
        Align(
          alignment: Alignment.center,
          child: Text(
            "You're almost done with your registration, kindly proceed with your facial recognition",
            style: TextStyle(
              fontSize: size.height * 0.019,
              fontWeight: FontWeight.w500,
              color: kPrimaryColor,
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Image.asset(
          AssetsPath.faceScan,
          height: size.height * 0.25,
          fit: BoxFit.fitHeight,
        ),
        // DottedBorder(
        //   color: kPrimaryColor.withOpacity(0.5),
        //   strokeWidth: 1,
        //   strokeCap: StrokeCap.round,
        //   dashPattern: const [20, 20],
        //   radius: const Radius.circular(30.0),
        //   child: SizedBox(
        //     height: size.height * 0.30,
        //     width: size.width / 1.7,
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         // SvgPicture.asset(
        //         //   AssetsPath.faceID,
        //         //   color: kPlaceholderColor,
        //         //   height: size.height * 0.10,
        //         // ),
        //         Image.asset(
        //           AssetsPath.faceScan,
        //           height: size.height * 0.25,
        //           fit: BoxFit.fitHeight,
        //         ),
        //         const SizedBox(
        //           height: 5.0,
        //         ),
        //         Text(
        //           'Face ID',
        //           style: TextStyle(
        //             fontSize: size.height * 0.0140,
        //             fontWeight: FontWeight.w300,
        //             color: kPlaceholderColor,
        //           ),
        //           textAlign: TextAlign.center,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),

        const SizedBox(
          height: 30.0,
        ),
        SizedBox(
          width: size.width,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(6.0),
                    decoration: const BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: size.height * 0.020,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Lightening',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: size.height * 0.020,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Make sure you are in a well lighted environment and do not wear objects like hats, masks that may cover your face.',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: size.height * 0.017,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(6.0),
                    decoration: const BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: size.height * 0.020,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Look Straight',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: size.height * 0.020,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Hold your Phone at high level and look straight to the camera.',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: size.height * 0.017,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
