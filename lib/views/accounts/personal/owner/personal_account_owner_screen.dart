import 'package:flutter/material.dart';
import 'package:shopstantly_app/callbacks/string_callback.dart';
import 'package:shopstantly_app/components/switch_account_modal.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/dimensions.dart';
import 'package:shopstantly_app/views/accounts/personal/components/more_option_modal.dart';
import 'package:shopstantly_app/views/accounts/personal/owner/widgets/store_view.dart';
import '../../../../models/general/account_type_model.dart';
import '../../personal/owner/widgets/event_view.dart';
import '../../personal/owner/widgets/owner_info_view.dart';
import '../widgets/service_view.dart';
import 'widgets/owner_post_view.dart';

class PersonalAccountOwnerScreen extends StatefulWidget {
  final StringCallback callback;
  const PersonalAccountOwnerScreen({Key? key, required this.callback})
      : super(key: key);

  @override
  State<PersonalAccountOwnerScreen> createState() =>
      _PersonalAccountOwnerScreenState();
}

class _PersonalAccountOwnerScreenState
    extends State<PersonalAccountOwnerScreen> {
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
        toolbarHeight: size.height * 0.12,
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
                        child: GestureDetector(
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
                                'Dotun Felixx',
                                style: TextStyle(
                                  fontFamily: kDefaultFont,
                                  fontSize: size.height * 0.03,
                                  color: kPrimaryTextColor,
                                  fontWeight: FontWeight.w500,
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
                      ),
                      IconButton(
                        onPressed: () async {
                          await MoreOptionModal.showMoreOptionModal(context);
                        },
                        icon: Icon(
                          Icons.add_box_outlined,
                          color: kIconColor,
                          size: size.height * 0.035,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu_outlined,
                          color: kIconColor,
                          size: size.height * 0.035,
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
                            'Store',
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
      return const StoreView();
    } else if (selectedIndex == 3) {
      return EventView(size: size);
    } else {
      return OwnerInfoView(size: size);
    }
  }
}
