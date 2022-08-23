import 'package:flutter/material.dart';
import 'package:shopstantly_app/callbacks/string_callback.dart';
import 'package:shopstantly_app/components/switch_account_modal.dart';

import '../../../../models/general/account_type_model.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/dimensions.dart';

class SocialAccountOwnerScreen extends StatefulWidget {
  final StringCallback callback;
  const SocialAccountOwnerScreen({Key? key, required this.callback})
      : super(key: key);

  @override
  State<SocialAccountOwnerScreen> createState() =>
      _SocialAccountOwnerScreenState();
}

class _SocialAccountOwnerScreenState extends State<SocialAccountOwnerScreen> {
  int selectedIndex = 0;
  String acctType = 'Social Account';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0.0,
        elevation: 0.0,
        backgroundColor: kBackgroundColor,
        toolbarHeight: size.height * 0.10,
        flexibleSpace: SafeArea(
          child: SizedBox(
            height: size.height * 0.30,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  margin: EdgeInsets.only(bottom: size.height * 0.007),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Dotun Felixx',
                              style: TextStyle(
                                fontFamily: kDefaultFont,
                                fontSize: size.height * 0.0160,
                                color: kPrimaryTextColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {
                                await SwitchAccountModal.showAccountListModal(
                                        context, accounts)
                                    .then((value) {
                                  setState(() {
                                    if (value == null) {
                                      //means nothing was selected

                                    } else {
                                      AccountTypeModel model =
                                          value as AccountTypeModel;
                                      acctType = model.account;
                                      widget.callback(model.type);
                                    }
                                  });
                                });
                              },
                              child: Row(
                                children: [
                                  Text(
                                    ' ($acctType)',
                                    style: TextStyle(
                                      fontFamily: kDefaultFont,
                                      fontSize: size.height * 0.0125,
                                      color:
                                          kPrimaryTextColor.withOpacity(0.75),
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down,
                              color: kPrimaryTextColor,
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_box_outlined,
                          color: kIconColor,
                          size: size.height * 0.028,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu_outlined,
                          color: kIconColor,
                          size: size.height * 0.028,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 0;
                            });
                          },
                          child: Text(
                            'Info',
                            style: TextStyle(
                              color: selectedIndex == 0
                                  ? kPrimaryColor
                                  : kPlaceholderColor,
                              fontFamily: kDefaultFont,
                              fontWeight: FontWeight.w400,
                              fontSize: size.height * 0.0180,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 1;
                            });
                          },
                          child: Text(
                            'Post',
                            style: TextStyle(
                              color: selectedIndex == 1
                                  ? kPrimaryColor
                                  : kPlaceholderColor,
                              fontFamily: kDefaultFont,
                              fontWeight: FontWeight.w400,
                              fontSize: size.height * 0.0180,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 2;
                            });
                          },
                          child: Text(
                            'Thrift',
                            style: TextStyle(
                              color: selectedIndex == 2
                                  ? kPrimaryColor
                                  : kPlaceholderColor,
                              fontFamily: kDefaultFont,
                              fontWeight: FontWeight.w400,
                              fontSize: size.height * 0.0180,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 3;
                            });
                          },
                          child: Text(
                            'Event',
                            style: TextStyle(
                              color: selectedIndex == 3
                                  ? kPrimaryColor
                                  : kPlaceholderColor,
                              fontFamily: kDefaultFont,
                              fontWeight: FontWeight.w400,
                              fontSize: size.height * 0.0180,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 4;
                            });
                          },
                          child: Text(
                            'Dashboard',
                            style: TextStyle(
                              color: selectedIndex == 4
                                  ? kPrimaryColor
                                  : kPlaceholderColor,
                              fontFamily: kDefaultFont,
                              fontWeight: FontWeight.w400,
                              fontSize: size.height * 0.0180,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.004),
                      width: size.width,
                      height: 1.0,
                      decoration: const BoxDecoration(color: kLightGrayColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
