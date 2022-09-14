import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/dimensions.dart';
import 'widgets/event_view.dart';
import 'widgets/info_view.dart';
import 'widgets/post_view.dart';
import 'widgets/product_view.dart';

class BusinessAccountScreen extends StatefulWidget {
  const BusinessAccountScreen({Key? key}) : super(key: key);

  @override
  State<BusinessAccountScreen> createState() => _BusinessAccountScreenState();
}

class _BusinessAccountScreenState extends State<BusinessAccountScreen> {
  int selectedIndex = 0;

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
                              'Profile',
                              style: TextStyle(
                                fontFamily: kDefaultFont,
                                fontSize: size.height * 0.0180,
                                color: kPrimaryTextColor,
                                fontWeight: FontWeight.w400,
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
                            'Services',
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
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Visibility(
              visible: selectedIndex == 0,
              child: InfoView(size: size),
            ),
            Visibility(
              visible: selectedIndex == 1,
              child: const ProductView(),
            ),
            Visibility(
              visible: selectedIndex == 2,
              child: const PostView(),
            ),
            Visibility(
              visible: selectedIndex == 3,
              child: const EventView(),
            ),
          ],
        ),
      ),
    );
  }
}
