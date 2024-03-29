import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopstantly_app/utils/assets_path.dart';

import '../../models/chats/chat_message.dart';
import '../../utils/app_colors.dart';
import '../../utils/dimensions.dart';

class ChatDetailScreen extends StatefulWidget {
  const ChatDetailScreen({Key? key}) : super(key: key);

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
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
            child: ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.only(
                      left: 14, right: 14, top: 10, bottom: 10),
                  child: messages[index].messageType == "receiver"
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://randomuser.me/api/portraits/men/5.jpg"),
                              maxRadius: 15,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      margin:
                                          const EdgeInsets.only(right: 50.0),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20.0),
                                          topRight: Radius.circular(20.0),
                                          bottomRight: Radius.circular(20.0),
                                        ),
                                        color: kChatBgColor,
                                      ),
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        messages[index].messageContent,
                                        style: TextStyle(
                                          fontFamily: kDefaultFont,
                                          fontSize: size.height * 0.0175,
                                          fontWeight: FontWeight.normal,
                                          color: kPrimaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      '12:34 pm',
                                      style: TextStyle(
                                        fontFamily: kDefaultFont,
                                        fontSize: size.height * 0.0150,
                                        fontWeight: FontWeight.normal,
                                        color: kTimeTextColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      : Container(
                          margin: const EdgeInsets.only(left: 70.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20.0),
                                            bottomLeft: Radius.circular(20.0),
                                            topRight: Radius.circular(20.0),
                                          ),
                                          color: kChatBgAccentColor,
                                        ),
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          messages[index].messageContent,
                                          style: TextStyle(
                                            fontFamily: kDefaultFont,
                                            fontSize: size.height * 0.0175,
                                            fontWeight: FontWeight.normal,
                                            color: kWhiteColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Text(
                                        '12:34 pm',
                                        style: TextStyle(
                                          fontFamily: kDefaultFont,
                                          fontSize: size.height * 0.0150,
                                          fontWeight: FontWeight.normal,
                                          color: kTimeTextColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                );
              },
            ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                color: kTimeTextColor.withOpacity(0.40),
                width: double.infinity,
                height: 0.5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(
                        bottom: 10,
                        left: 15,
                        right: 10,
                      ),
                      padding: const EdgeInsets.all(10.0),
                      //height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: kChatBgColor,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: GestureDetector(
                              onTap: () {},
                              child: SizedBox(
                                width: size.height * 0.0300,
                                height: size.height * 0.0350,
                                child: SvgPicture.asset(
                                  AssetsPath.attachment,
                                  color: kTimeTextColor,
                                  width: size.height * 0.0250,
                                  height: size.height * 0.0300,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextFormField(
                              onChanged: (value) {},
                              maxLines: null,
                              textAlignVertical: TextAlignVertical.bottom,
                              textCapitalization: TextCapitalization.sentences,
                              style: TextStyle(
                                color: kPrimaryTextColor,
                                fontFamily: kDefaultFont,
                                fontSize: size.height * 0.0150,
                                fontWeight: FontWeight.normal,
                              ),
                              decoration: const InputDecoration(
                                hintText: "Write message...",
                                hintStyle: TextStyle(
                                  color: kPrimaryTextColor,
                                ),
                                border: InputBorder.none,
                              ),
                              keyboardType: TextInputType.text,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: SvgPicture.asset(
                              AssetsPath.emoji,
                              color: kTimeTextColor,
                              width: size.height * 0.0250,
                              height: size.height * 0.0300,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 20.0, bottom: 10.0),
                      child: SvgPicture.asset(
                        AssetsPath.sendIcon,
                        color: kPrimaryColor,
                        width: size.height * 0.0300,
                        height: size.height * 0.0400,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
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
