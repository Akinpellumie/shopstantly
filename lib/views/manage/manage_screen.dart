import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/app_colors.dart';

import '../../utils/dimensions.dart';

class ManageScreen extends StatefulWidget {
  const ManageScreen({Key? key}) : super(key: key);

  @override
  State<ManageScreen> createState() => _ManageScreenState();
}

class _ManageScreenState extends State<ManageScreen> {
  bool isChat = true;
  bool isCommerce = false;
  bool isEvent = false;
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
                      });
                    },
                    child: SizedBox(
                      width: size.width / 3 - 20,
                      child: Column(
                        children: [
                          Text(
                            'Chats',
                            style: TextStyle(
                              fontFamily: kDefaultFont,
                              fontSize: size.height * 0.0180,
                              fontWeight: FontWeight.w500,
                              color: isChat ? kOrangeColor : kPlaceholderColor,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            height: 2.0,
                            width: size.width / 3,
                            decoration: BoxDecoration(
                              color: isChat ? kOrangeColor : Colors.transparent,
                              borderRadius: BorderRadius.circular(5.0),
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
                      });
                    },
                    child: SizedBox(
                      width: size.width / 3 - 10,
                      child: Column(
                        children: [
                          Text(
                            'Commerce',
                            style: TextStyle(
                              fontFamily: kDefaultFont,
                              fontSize: size.height * 0.0180,
                              fontWeight: FontWeight.w500,
                              color:
                                  isCommerce ? kOrangeColor : kPlaceholderColor,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            height: 2.0,
                            width: size.width / 3,
                            decoration: BoxDecoration(
                              color: isCommerce
                                  ? kOrangeColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(5.0),
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
                      });
                    },
                    child: SizedBox(
                      width: size.width / 3 - 20,
                      child: Column(
                        children: [
                          Text(
                            'Event',
                            style: TextStyle(
                              fontFamily: kDefaultFont,
                              fontSize: size.height * 0.0180,
                              fontWeight: FontWeight.w500,
                              color: isEvent ? kOrangeColor : kPlaceholderColor,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            height: 2.0,
                            width: size.width / 3,
                            decoration: BoxDecoration(
                              color:
                                  isEvent ? kOrangeColor : Colors.transparent,
                              borderRadius: BorderRadius.circular(5.0),
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
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Message Requests (12)',
                  style: TextStyle(
                    fontFamily: kDefaultFont,
                    fontSize: size.height * 0.0180,
                    fontWeight: FontWeight.w500,
                    color: kPrimaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                child: Row(
                  children: [
                    // FacePile(
                    //   radius: 20,
                    //   space: 10,
                    //   images: const [
                    //     NetworkImage("https://i.pravatar.cc/300?img=1"),
                    //     NetworkImage("https://i.pravatar.cc/300?img=2"),
                    //     NetworkImage("https://i.pravatar.cc/300?img=3"),
                    //   ],
                    //   border: Border.all(color: kWhiteColor, width: 2),
                    // ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Private Bridal shower',
                            style: TextStyle(
                              fontFamily: kDefaultFont,
                              fontSize: size.height * 0.0180,
                              fontWeight: FontWeight.w500,
                              color: kPrimaryColor,
                            ),
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            'Phillips Started following you...',
                            style: TextStyle(
                              fontFamily: kDefaultFont,
                              fontSize: size.height * 0.0150,
                              fontWeight: FontWeight.normal,
                              color: kPlaceholderColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '05:34',
                          style: TextStyle(
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.0180,
                            fontWeight: FontWeight.w500,
                            color: kPrimaryColor,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 5.0,
                          ),
                          decoration: BoxDecoration(
                            color: kOrangeColor,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Text(
                            '120',
                            style: TextStyle(
                              fontFamily: kDefaultFont,
                              fontSize: size.height * 0.0150,
                              fontWeight: FontWeight.normal,
                              color: kWhiteColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
