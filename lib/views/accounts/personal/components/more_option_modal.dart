import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopstantly_app/utils/assets_path.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/dimensions.dart';

class MoreOptionModal {
  static showMoreOptionModal(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return showModalBottomSheet(
      isScrollControlled: true,
      //routeSettings: RouteSettings(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: size.height * 0.35,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40.0),
              topLeft: Radius.circular(40.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 5.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  onTap: () {
                    //Custom
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 5.0,
                        ),
                        decoration: BoxDecoration(
                          color: kWhiteColor.withOpacity(
                            0.65,
                          ),
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              AssetsPath.postIcon,
                              color: kPrimaryColor,
                              width: size.height * 0.0300,
                              height: size.height * 0.0300,
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Post To Feed',
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontFamily: kDefaultFont,
                                    fontWeight: FontWeight.normal,
                                    fontSize: size.height * 0.0200,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 1.0,
                        width: size.width,
                        color: kLightGrayColor.withOpacity(0.45),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    //Custom
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 5.0,
                        ),
                        decoration: BoxDecoration(
                          color: kWhiteColor.withOpacity(
                            0.65,
                          ),
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              AssetsPath.postIcon,
                              color: kPrimaryColor,
                              width: size.height * 0.0300,
                              height: size.height * 0.0300,
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Advertize Thrift',
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontFamily: kDefaultFont,
                                    fontWeight: FontWeight.normal,
                                    fontSize: size.height * 0.0200,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 1.0,
                        width: size.width,
                        color: kLightGrayColor.withOpacity(0.45),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    //Custom
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 5.0,
                        ),
                        decoration: BoxDecoration(
                          color: kWhiteColor.withOpacity(
                            0.65,
                          ),
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              AssetsPath.postEventIcon,
                              color: kPrimaryColor,
                              width: size.height * 0.0300,
                              height: size.height * 0.0300,
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Create Event',
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontFamily: kDefaultFont,
                                    fontWeight: FontWeight.normal,
                                    fontSize: size.height * 0.0200,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 1.0,
                        width: size.width,
                        color: kLightGrayColor.withOpacity(0.45),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
