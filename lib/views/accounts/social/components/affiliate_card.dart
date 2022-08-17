import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopstantly_app/views/accounts/personal/components/circle_button.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/assets_path.dart';

class AffiliateCard extends StatelessWidget {
  const AffiliateCard({
    Key? key,
    required this.onTapped,
    required this.size,
  }) : super(key: key);

  final VoidCallback onTapped;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width / 2 - 25,
      child: Column(
        children: [
          GestureDetector(
            onTap: onTapped,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    AssetsPath.heels,
                    height: 200.0,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Positioned(
                  top: 10.0,
                  right: 10.0,
                  child: CircleButton(
                      iconData: CupertinoIcons.heart,
                      pressed: () {},
                      bgColor: kPrimaryColor,
                      iconColor: kWhiteColor),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rollex  Watch',
                style: TextStyle(
                  color: kPrimaryTextColor,
                  fontSize: size.width * 0.040,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Comes with a box and cleaner',
                style: TextStyle(
                  color: kPlaceholderColor,
                  fontSize: size.width * 0.030,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  '#1,500',
                  style: TextStyle(
                    color: kPrimaryTextColor,
                    fontSize: size.width * 0.035,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_box,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
