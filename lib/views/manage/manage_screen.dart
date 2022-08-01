import 'package:face_pile/face_pile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/assets_path.dart';
import 'package:shopstantly_app/views/manage/widgets/commerce_list_view.dart';
import 'package:shopstantly_app/views/manage/widgets/event_list_view.dart';

import '../../utils/dimensions.dart';
import 'widgets/chat_list_view.dart';

class ManageScreen extends StatefulWidget {
  const ManageScreen({Key? key}) : super(key: key);

  @override
  State<ManageScreen> createState() => _ManageScreenState();
}

class _ManageScreenState extends State<ManageScreen> {
  bool isChat = true;
  bool isCommerce = false;
  bool isEvent = false;
  bool isHistory = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isChat = true;
                        isCommerce = false;
                        isEvent = false;
                        isHistory = false;
                      });
                    },
                    child: SizedBox(
                      width: size.width / 4 - 20,
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            AssetsPath.inbox,
                            color: isChat ? kPrimaryColor : kPlaceholderColor,
                            width: size.height * 0.0300,
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Inbox',
                            style: TextStyle(
                              fontFamily: kDefaultFont,
                              fontSize: size.height * 0.0160,
                              fontWeight: FontWeight.normal,
                              color: isChat ? kPrimaryColor : kPlaceholderColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isChat = false;
                        isCommerce = true;
                        isEvent = false;
                        isHistory = false;
                      });
                    },
                    child: SizedBox(
                      width: size.width / 4 - 10,
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            AssetsPath.commerce,
                            color:
                                isCommerce ? kPrimaryColor : kPlaceholderColor,
                            width: size.height * 0.0300,
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Commerce',
                            style: TextStyle(
                              fontFamily: kDefaultFont,
                              fontSize: size.height * 0.0160,
                              fontWeight: FontWeight.normal,
                              color: isCommerce
                                  ? kPrimaryColor
                                  : kPlaceholderColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isChat = false;
                        isCommerce = false;
                        isEvent = true;
                        isHistory = false;
                      });
                    },
                    child: SizedBox(
                      width: size.width / 4 - 10,
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            AssetsPath.event,
                            color: isEvent ? kPrimaryColor : kPlaceholderColor,
                            width: size.height * 0.0300,
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Events',
                            style: TextStyle(
                              fontFamily: kDefaultFont,
                              fontSize: size.height * 0.0150,
                              fontWeight: FontWeight.normal,
                              color:
                                  isEvent ? kPrimaryColor : kPlaceholderColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isChat = false;
                        isCommerce = false;
                        isEvent = false;
                        isHistory = true;
                      });
                    },
                    child: SizedBox(
                      width: size.width / 4 - 20,
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            AssetsPath.history,
                            color:
                                isHistory ? kPrimaryColor : kPlaceholderColor,
                            width: size.height * 0.0300,
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'History',
                            style: TextStyle(
                              fontFamily: kDefaultFont,
                              fontSize: size.height * 0.0160,
                              fontWeight: FontWeight.normal,
                              color:
                                  isHistory ? kPrimaryColor : kPlaceholderColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              // SizedBox(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Expanded(
              //         child: Container(
              //           margin:
              //               const EdgeInsets.only(right: kDefaultPadding / 2),
              //           padding: const EdgeInsets.symmetric(
              //               horizontal: kDefaultPadding - 10),
              //           height: 50,
              //           decoration: BoxDecoration(
              //             color: kWhiteColor,
              //             borderRadius: BorderRadius.circular(15),
              //             boxShadow: [
              //               BoxShadow(
              //                 blurRadius: 50,
              //                 offset: const Offset(0, 10),
              //                 color: kPrimaryColor.withOpacity(0.10),
              //               ),
              //             ],
              //             border:
              //                 Border.all(color: kPlaceholderColor, width: 1.0),
              //           ),
              //           child: Row(
              //             children: <Widget>[
              //               Container(
              //                 height: 20.0,
              //                 width: 20.0,
              //                 margin: const EdgeInsets.only(right: 5.0),
              //                 child: SvgPicture.asset(AssetsPath.searchIcon),
              //               ),
              //               const SizedBox(width: 5.0),
              //               Expanded(
              //                 child: TextField(
              //                   onChanged: (value) {},
              //                   decoration: InputDecoration(
              //                     hintText: 'Search customers',
              //                     hintStyle: TextStyle(
              //                       color: kPrimaryColor.withOpacity(0.5),
              //                       fontFamily: kDefaultFont,
              //                     ),
              //                     enabledBorder: InputBorder.none,
              //                     focusedBorder: InputBorder.none,
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //       GestureDetector(
              //         onTap: () {},
              //         child: const Icon(
              //           Icons.filter_list,
              //           color: kPlaceholderColor,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // const SizedBox(
              //   height: 20.0,
              // ),
              getDisplayWidget(size),
            ],
          ),
        ),
      ),
    );
  }

  Widget getDisplayWidget(Size size) {
    if (isChat) {
      return ChatListView(
        size: size,
      );
    } else if (isCommerce) {
      return CommerceListView(
        size: size,
      );
    } else if (isEvent) {
      return EventListView(
        size: size,
      );
    } else {
      return ChatListView(
        size: size,
      );
    }
  }
}
