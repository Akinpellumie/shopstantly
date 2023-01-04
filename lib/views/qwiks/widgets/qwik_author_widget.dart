import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/dimensions.dart';

class QwikAuthorWidget extends StatelessWidget {
  const QwikAuthorWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          flex: 7,
          child: ListTile(
            minLeadingWidth: 0.0,
            horizontalTitleGap: 5,
            dense: true,
            title: SizedBox(
              //width: 125,
              height: size.height * 0.020,
              child: Marquee(
                text: 'Roddy Roundicch - The Rounder boat - original sound | ',
                velocity: 10,
                scrollAxis: Axis.horizontal,
                style: const TextStyle(
                  color: kWhiteColor,
                  fontSize: 11.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: kDefaultFont,
                ),
              ),
            ),
            leading: Icon(
              Icons.music_note,
              size: size.height * 0.025,
              color: kWhiteColor,
            ),
          ),
        ),
        Flexible(
          flex: 3,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 25.0,
                height: 25.0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 2.0,
                  vertical: 2.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: kPlaceholderColor,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6.0),
                  child: Image.asset(
                    AssetsPath.image2,
                    fit: BoxFit.cover,
                    height: 20.0,
                  ),
                ),
              ),
              const SizedBox(
                width: 5.0,
              ),
              Row(
                children: const [
                  Text(
                    'Tolani Favor',
                    style: TextStyle(
                      color: kWhiteColor,
                      fontFamily: kDefaultFont,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Icon(
                    Icons.verified_user,
                    color: kOrangeColor,
                    size: 7.0,
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
