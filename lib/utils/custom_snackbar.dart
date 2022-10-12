
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/assets_path.dart';
import '../utils/snackbar_content_type.dart';
import 'dimensions.dart';

class CustomSnackbar extends StatelessWidget {
  /// `IMPORTANT NOTE` for SnackBar properties before putting this in `content`
  /// set backgroundColor: Colors.transparent
  /// set behavior: SnackBarBehavior.floating
  /// set elevation: 0.0

  /// title is the header String that will show on top
  final String title;

  /// message String is the body message which shows only 2 lines at max
  final String message;

  /// `optional` color of the SnackBar body
  final Color? color;

  /// contentType will reflect the overall theme of SnackBar: failure, success, help, warning
  final SnackbarContentType contentType;

  const CustomSnackbar({
    Key? key,
    this.color,
    required this.title,
    required this.message,
    required this.contentType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// For managing responsiveness
    Size size = MediaQuery.of(context).size;

    /// For reflecting different color shades in the SnackBar
    final hsl = HSLColor.fromColor(color ?? contentType.color!);
    final hslDark = hsl.withLightness((hsl.lightness - 0.1).clamp(0.0, 1.0));

    return Stack(
      clipBehavior: Clip.none,
      children: [
        /// SnackBar Body
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          height: size.height * 0.12,
          decoration: BoxDecoration(
            color: color ?? contentType.color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              SizedBox(
                width: size.width * 0.122,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// `title` parameter
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: size.height * 0.025,
                              color: Colors.white,
                              fontFamily: kDefaultFont),
                        ),
                        InkWell(
                          onTap: () => ScaffoldMessenger.of(context)
                              .hideCurrentSnackBar(),
                          child: SvgPicture.asset(
                            AssetsPath.failure,
                            height: size.height * 0.022,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),

                    /// `message` body text parameter
                    Expanded(
                      child: Text(
                        message,
                        style: TextStyle(
                          fontFamily: kDefaultFont,
                          fontSize: size.height * 0.016,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        /// other SVGs in body
        Positioned(
          bottom: 0,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
            ),
            child: SvgPicture.asset(
              AssetsPath.bubbles,
              height: size.height * 0.06,
              width: size.width * 0.05,
              color: hslDark.toColor(),
            ),
          ),
        ),
        Positioned(
          top: -size.height * 0.025,
          left: size.width * 0.035,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(
                AssetsPath.back,
                height: size.height * 0.06,
                color: hslDark.toColor(),
              ),
              Positioned(
                top: size.height * 0.015,
                child: SvgPicture.asset(
                  assetSVG(contentType),
                  height: size.height * 0.022,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  /// Reflecting proper icon based on the contentType
  String assetSVG(SnackbarContentType contentType) {
    if (contentType == SnackbarContentType.failure) {
      /// failure will show `CROSS`
      return AssetsPath.failure;
    } else if (contentType == SnackbarContentType.success) {
      /// success will show `CHECK`
      return AssetsPath.successTag;
    } else if (contentType == SnackbarContentType.warning) {
      /// warning will show `EXCLAMATION`
      return AssetsPath.warning;
    } else if (contentType == SnackbarContentType.help) {
      /// help will show `QUESTION MARK`
      return AssetsPath.help;
    } else {
      return AssetsPath.failure;
    }
  }
}
