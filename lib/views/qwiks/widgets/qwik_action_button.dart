import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/dimensions.dart';

class QwikActionButton extends StatelessWidget {
  const QwikActionButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width: size.width - 10.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 3.0,
          ),
          Container(
            alignment: Alignment.center,
            //width: 50.0,
            height: 40.0,
            child: Stack(
              fit: StackFit.loose,
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 35.0,
                  height: 35.0,
                  margin: const EdgeInsets.only(bottom: 5.0),
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
                Positioned(
                  right: -10.0,
                  child: Container(
                    height: 18.0,
                    width: 18.0,
                    //padding: const EdgeInsets.all(3.0),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: kWhiteColor,
                    ),
                    child: const ClipOval(
                      child: Icon(
                        Icons.add,
                        color: kOrangeColor,
                        size: 15.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 3.0,
          ),
          IconButton(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.zero,
            icon: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AssetsPath.buy,
                  height: size.height * 0.030,
                  color: kWhiteColor,
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Text(
                  '128',
                  style: TextStyle(
                    fontFamily: kDefaultFont,
                    fontSize: size.height * 0.0170,
                    fontWeight: FontWeight.w500,
                    color: kWhiteColor,
                  ),
                ),
              ],
            ),
            onPressed: () {
              // Future.delayed(Duration.zero, () {
              //   AuthPopUp.authPopupModal(
              //     context,
              //   );
              // });
            },
          ),
          IconButton(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.zero,
            icon: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AssetsPath.like,
                  height: size.height * 0.030,
                  color: kWhiteColor,
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Text(
                  '128',
                  style: TextStyle(
                    fontFamily: kDefaultFont,
                    fontSize: size.height * 0.0170,
                    fontWeight: FontWeight.w500,
                    color: kWhiteColor,
                  ),
                ),
              ],
            ),
            onPressed: () {
              // Future.delayed(Duration.zero, () {
              //   AuthPopUp.authPopupModal(
              //     context,
              //   );
              // });
            },
          ),
          IconButton(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.zero,
            icon: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AssetsPath.bubble,
                  height: size.height * 0.030,
                  color: kWhiteColor,
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Text(
                  '128',
                  style: TextStyle(
                    fontFamily: kDefaultFont,
                    fontSize: size.height * 0.0170,
                    fontWeight: FontWeight.w500,
                    color: kWhiteColor,
                  ),
                ),
              ],
            ),
            onPressed: () {
              // Future.delayed(Duration.zero, () {
              //   AuthPopUp.authPopupModal(
              //     context,
              //   );
              // });
            },
          ),
          IconButton(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.zero,
            icon: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AssetsPath.reshare,
                  height: size.height * 0.030,
                  color: kWhiteColor,
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Text(
                  '128',
                  style: TextStyle(
                    fontFamily: kDefaultFont,
                    fontSize: size.height * 0.0170,
                    fontWeight: FontWeight.w500,
                    color: kWhiteColor,
                  ),
                ),
              ],
            ),
            onPressed: () {
              // Future.delayed(Duration.zero, () {
              //   AuthPopUp.authPopupModal(
              //     context,
              //   );
              // });
            },
          ),
          IconButton(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.zero,
            icon: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AssetsPath.share,
                  height: size.height * 0.030,
                  color: kWhiteColor,
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Text(
                  '128',
                  style: TextStyle(
                    fontFamily: kDefaultFont,
                    fontSize: size.height * 0.0170,
                    fontWeight: FontWeight.w500,
                    color: kWhiteColor,
                  ),
                ),
              ],
            ),
            onPressed: () {
              // Future.delayed(Duration.zero, () {
              //   AuthPopUp.authPopupModal(
              //     context,
              //   );
              // });
            },
          ),
        ],
      ),
    );
  }
}
