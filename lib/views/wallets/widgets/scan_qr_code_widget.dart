import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopstantly_app/utils/assets_path.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/dimensions.dart';


class ScanQrCodeWidget extends StatelessWidget {
  const ScanQrCodeWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          SvgPicture.asset(
            AssetsPath.qrcode,
            color: kPrimaryColor,
            height: 150,
            width: size.width * 0.50,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            'Proceed to make payment and complete your transaction on shopstantly with scanning the bar code.',
            style: TextStyle(
              fontFamily: kDefaultFont,
              fontSize: size.height * 0.0200,
              color: kPrimaryColor,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
