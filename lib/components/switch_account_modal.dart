import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopstantly_app/utils/assets_path.dart';

import '../../utils/app_colors.dart';
import '../../utils/dimensions.dart';
import '../models/general/account_type_model.dart';

class SwitchAccountModal {
  static showAccountListModal(
      BuildContext context, List<AccountTypeModel> acctList) {
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
          height: size.height * 0.40,
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
                // Align(
                //   alignment: Alignment.topRight,
                //   child: GestureDetector(
                //     onTap: () {
                //       Navigator.pop(context, '');
                //     },
                //     child: Align(
                //       alignment: Alignment.centerRight,
                //       child: Icon(
                //         Icons.cancel,
                //         color: kPrimaryColor.withOpacity(0.8),
                //         size: 25.0,
                //       ),
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 10.0,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pop(context, acctList[index]);
                      },
                      child: Container(
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
                              getAcctIcon(acctList[index].type),
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
                                  acctList[index].account,
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
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 1.0,
                      width: size.width,
                      color: kLightGrayColor.withOpacity(0.45),
                    );
                  },
                  itemCount: acctList.length,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      AssetsPath.plusIcon,
                      color: kWhiteColor,
                      width: size.height * 0.0300,
                      height: size.height * 0.0300,
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: kPrimaryColor,
                            size: size.height * 0.0200,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Add another account',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: kDefaultFont,
                                fontWeight: FontWeight.normal,
                                fontSize: size.height * 0.0200,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  static String getAcctIcon(String type) {
    if (type.contains('personal')) {
      return AssetsPath.user;
    } else if (type.contains('business')) {
      return AssetsPath.businessAcct;
    } else if (type.contains('social')) {
      return AssetsPath.socialAcct;
    } else {
      return AssetsPath.user;
    }
  }
}
