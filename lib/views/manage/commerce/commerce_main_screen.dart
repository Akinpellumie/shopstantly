import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/assets_path.dart';

import '../../../models/chats/chat_message.dart';
import '../../../utils/app_button.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/dimensions.dart';
import '../../accounts/business/components/quality_counter.dart';

class CommerceMainScreen extends StatefulWidget {
  const CommerceMainScreen({Key? key}) : super(key: key);

  @override
  State<CommerceMainScreen> createState() => _CommerceMainScreenState();
}

class _CommerceMainScreenState extends State<CommerceMainScreen> {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(
        messageContent:
            "How have you been? \nI just wanna let you know I relocated to Canada last week.",
        messageType: "receiver"),
    ChatMessage(
        messageContent:
            "Hey Kriss, I am doing fine dude. wbu? testing and testing width  and height",
        messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];

  int selectedIndex = 0;
  int selectedCartIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(right: 15.0, left: 15.0),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.keyboard_backspace,
                    color: kPrimaryColor,
                    size: size.height * 0.0300,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Stack(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://randomuser.me/api/portraits/men/5.jpg"),
                      maxRadius: 20,
                    ),
                    Positioned(
                      top: 0.0,
                      right: 0.0,
                      child: Container(
                        height: 12.0,
                        width: 12.0,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1.0,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Kriss Benwat",
                        style: TextStyle(
                            fontSize: size.height * 0.0180,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Online",
                        style: TextStyle(
                          color: kTimeTextColor,
                          fontSize: size.height * 0.0150,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  CupertinoIcons.phone_fill,
                  color: kPrimaryColor,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                const Icon(
                  CupertinoIcons.ellipsis_vertical,
                  color: kPrimaryColor,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            color: kTimeTextColor.withOpacity(0.40),
            width: double.infinity,
            height: 0.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
                child: menuTabItem(
                  size,
                  'Chat',
                  selectedIndex == 0 ? true : false,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
                child: menuTabItem(
                  size,
                  'Escrow',
                  selectedIndex == 1 ? true : false,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                },
                child: menuTabItem(
                  size,
                  'Logistic',
                  selectedIndex == 2 ? true : false,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 3;
                    //showFilterTabs = true;
                  });
                },
                child: menuTabItem(
                  size,
                  'Product',
                  selectedIndex == 3 ? true : false,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 4;
                    //showFilterTabs = true;
                  });
                },
                child: menuTabItem(
                  size,
                  'Themes',
                  selectedIndex == 4 ? true : false,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            color: kTimeTextColor.withOpacity(0.40),
            width: double.infinity,
            height: 0.5,
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 20.0,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCartIndex = 0;
                              });
                            },
                            child: Container(
                              //width: size.width / 4 - 10,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5.0),
                              decoration: BoxDecoration(
                                  color: selectedCartIndex == 0
                                      ? kPrimaryColor
                                      : kTabBgColor,
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Center(
                                child: Text(
                                  'Cart A',
                                  style: TextStyle(
                                    color: selectedCartIndex == 0
                                        ? kWhiteColor
                                        : kPlaceholderColor,
                                    fontFamily: kDefaultFont,
                                    fontSize: size.width * 0.030,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5.0),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCartIndex = 1;
                              });
                            },
                            child: Container(
                              //width: size.width / 4 - 10,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5.0),
                              decoration: BoxDecoration(
                                  color: selectedCartIndex == 1
                                      ? kPrimaryColor
                                      : kTabBgColor,
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Center(
                                child: Text(
                                  'Cart B',
                                  style: TextStyle(
                                    color: selectedCartIndex == 1
                                        ? kWhiteColor
                                        : kPlaceholderColor,
                                    fontFamily: kDefaultFont,
                                    fontSize: size.width * 0.030,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5.0),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCartIndex = 2;
                              });
                            },
                            child: Container(
                              //width: size.width / 4 - 10,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5.0),
                              decoration: BoxDecoration(
                                  color: selectedCartIndex == 2
                                      ? kPrimaryColor
                                      : kTabBgColor,
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Center(
                                child: Text(
                                  'Cart C',
                                  style: TextStyle(
                                    color: selectedCartIndex == 2
                                        ? kWhiteColor
                                        : kPlaceholderColor,
                                    fontFamily: kDefaultFont,
                                    fontSize: size.width * 0.030,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5.0),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCartIndex = 3;
                              });
                            },
                            child: Container(
                              //width: size.width / 4 - 10,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5.0),
                              decoration: BoxDecoration(
                                  color: selectedCartIndex == 3
                                      ? kPrimaryColor
                                      : kTabBgColor,
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Center(
                                child: Text(
                                  'Cart D',
                                  style: TextStyle(
                                    color: selectedCartIndex == 3
                                        ? kWhiteColor
                                        : kPlaceholderColor,
                                    fontFamily: kDefaultFont,
                                    fontSize: size.width * 0.030,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5.0),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        height: 100.0,
                        child: Row(
                          children: [
                            Container(
                              height: 100.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  15.0,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.network(
                                  AssetsPath.sneakerPhoto,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Amazing T-shirt',
                                    style: TextStyle(
                                      color: kPrimaryColor,
                                      fontFamily: kDefaultFont,
                                      fontSize: size.height * 0.0180,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Black /M',
                                    style: TextStyle(
                                      color: kPlaceholderColor,
                                      fontFamily: kDefaultFont,
                                      fontSize: size.height * 0.0170,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  const Spacer(),
                                  QualityCounter(size: size),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                '\$12.00',
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontFamily: kDefaultFont,
                                  fontSize: size.height * 0.0200,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10.0),
                        color: kTimeTextColor.withOpacity(0.40),
                        width: double.infinity,
                        height: 0.5,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            color: kWhiteColor,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Total',
                        style: TextStyle(
                          color: kPlaceholderColor,
                          fontFamily: kDefaultFont,
                          fontSize: size.height * 0.0180,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Text(
                      '\$20.00',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.0190,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                AppButton(
                  text: "Checkout",
                  type: ButtonType.primary,
                  onPressed: () {
                    //CustomRouter.nextScreen(context, "/mainPage");
                  },
                ),
              ],
            ),
          ),
          //CommerceChatView(messages: messages, size: size),
        ],
      ),
    );
  }

  SizedBox menuTabItem(Size size, String title, bool active) {
    return SizedBox(
      //width: boxWidth,
      child: Text(
        title,
        style: TextStyle(
          fontFamily: kDefaultFont,
          fontSize: size.height * 0.0150,
          fontWeight: FontWeight.normal,
          color: active ? kPrimaryColor : kPlaceholderColor,
        ),
      ),
    );
  }
}
