import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopstantly_app/components/switch_account_modal.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/dimensions.dart';
import '../../../../utils/assets_path.dart';
import '../../personal/owner/widgets/event_view.dart';
import '../../personal/owner/widgets/owner_info_view.dart';
import '../../personal/owner/widgets/post_view.dart';
import '../widgets/service_view.dart';
import 'widgets/owner_post_view.dart';

class PersonalAccountScreen extends StatefulWidget {
  const PersonalAccountScreen({Key? key}) : super(key: key);

  @override
  State<PersonalAccountScreen> createState() => _PersonalAccountScreenState();
}

class _PersonalAccountScreenState extends State<PersonalAccountScreen> {
  int selectedIndex = 0;
  String acctType = 'Personal Account';

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
                                List<String> accts = [
                                  'Personal',
                                  'Business',
                                  'Social'
                                ];
                                await SwitchAccountModal.showAccountListModal(
                                        context, accts)
                                    .then((value) {
                                  setState(() {
                                    acctType = value;
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          displayWidgetView(size),
        ],
      ),
      // Column(
      //   children: [],
      // ),
    );
  }

  Widget displayWidgetView(Size size) {
    if (selectedIndex == 0) {
      return OwnerInfoView(size: size);
    }
    if (selectedIndex == 1) {
      return OwnerPostView(
        size: size,
      );
    } else if (selectedIndex == 2) {
      return ServiceView(size: size);
    } else if (selectedIndex == 3) {
      return EventView(size: size);
    } else {
      return OwnerInfoView(size: size);
    }
  }
}
