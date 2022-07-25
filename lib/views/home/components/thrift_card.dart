import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/assets_path.dart';
import '../../../../utils/dimensions.dart';

class ThriftCard extends StatelessWidget {
  const ThriftCard({
    Key? key,
    required this.onTapped,
    required this.size,
  }) : super(key: key);

  final VoidCallback onTapped;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width / 2 - 15,
      child: Column(
        children: [
          GestureDetector(
            onTap: onTapped,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                AssetsPath.heels,
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            'Garnished Pasta with sauce',
            style: TextStyle(
              color: kPrimaryTextColor,
              fontSize: size.width * 0.040,
              fontWeight: FontWeight.w400,
            ),
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
              Text(
                '#2,500',
                style: TextStyle(
                  color: kPrimaryTextColor,
                  fontSize: size.width * 0.035,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: <Widget>[
              Image.asset(
                AssetsPath.sofast,
                height: 20.0,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                width: 7.0,
              ),
              Flexible(
                child: Text(
                  'FREE Delivery Within City',
                  style: TextStyle(
                    color: kPlaceholderColor,
                    fontFamily: kDefaultFont,
                    fontWeight: FontWeight.w400,
                    fontSize: size.width * 0.030,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '23 of 50 items left',
                style: TextStyle(
                  color: kPlaceholderColor,
                  fontFamily: kDefaultFont,
                  fontWeight: FontWeight.w400,
                  fontSize: size.width * 0.035,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              LinearPercentIndicator(
                lineHeight: 6.0,
                percent: 0.6,
                padding: const EdgeInsets.all(0),
                barRadius: const Radius.circular(10.0),
                progressColor: kPlaceholderColor,
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 4.0, vertical: 5.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: kPrimaryColor,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: const Center(
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(
                        fontSize: kRegularText - 2,
                        fontWeight: FontWeight.w400,
                        fontFamily: kDefaultFont,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              SvgPicture.asset(AssetsPath.wishlist)
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
        ],
      ),
    );
  }
}
