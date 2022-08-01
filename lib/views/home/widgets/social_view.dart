import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/assets_path.dart';

import '../../../utils/dimensions.dart';

class SocialView extends StatefulWidget {
  final Size size;
  const SocialView({Key? key, required this.size}) : super(key: key);

  @override
  State<SocialView> createState() => _SocialViewState();
}

class _SocialViewState extends State<SocialView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: kPrimaryColor,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Image.asset(
                          AssetsPath.image2,
                          fit: BoxFit.cover,
                        )),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Linda Flora',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontFamily: kDefaultFont,
                          fontSize: widget.size.height * 0.0150,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Ibadan, Nigeria',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontFamily: kDefaultFont,
                          fontSize: widget.size.height * 0.0130,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 15.0,
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '3 days ago',
                  style: TextStyle(
                    color: kPlaceholderColor.withOpacity(0.75),
                    fontFamily: kDefaultFont,
                    fontSize: widget.size.height * 0.0150,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Icon(
                  Icons.more_vert_outlined,
                  color: kPrimaryColor,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
