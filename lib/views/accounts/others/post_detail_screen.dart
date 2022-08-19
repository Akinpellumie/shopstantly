import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../models/chats/chat_message.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/dimensions.dart';


class PostDetailScreen extends StatefulWidget {
  const PostDetailScreen({Key? key}) : super(key: key);

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
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
                      bottom: 0.0,
                      right: 0.0,
                      child: Container(
                        height: 15.0,
                        width: 15.0,
                        //padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: kOrangeColor,
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1.0,
                            color: kPrimaryColor,
                          ),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.check,
                            color: kWhiteColor,
                            size: 10.0,
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
                        "Kerah Stores",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: size.height * 0.0180,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "1.98m subcribers",
                        style: TextStyle(
                          color: kTimeTextColor,
                          fontSize: size.height * 0.0150,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            color: kPlaceholderColor,
            icon: const Icon(
              CupertinoIcons.heart,
              color: kPlaceholderColor,
            ),
            iconSize: size.height * 0.030,
            onPressed: () {},
            padding: const EdgeInsets.symmetric(
              horizontal: 0.0,
              vertical: 0.0,
            ),
            alignment: Alignment.centerLeft,
          ),
          IconButton(
            color: kPlaceholderColor,
            icon: const Icon(
              Icons.share_outlined,
              color: kPlaceholderColor,
            ),
            iconSize: size.height * 0.030,
            onPressed: () {},
            padding: const EdgeInsets.symmetric(
              horizontal: 0.0,
              vertical: 0.0,
            ),
            alignment: Alignment.centerLeft,
          ),
          IconButton(
            color: kPlaceholderColor,
            icon: const Icon(
              CupertinoIcons.bookmark,
              color: kPlaceholderColor,
            ),
            iconSize: size.height * 0.030,
            onPressed: () {},
            padding: const EdgeInsets.symmetric(
              horizontal: 0.0,
              vertical: 0.0,
            ),
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              physics: const AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10.0),
                      height: 100.0,
                      child: ListView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 4,
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 100.0,
                            width: (size.width / 4) - 10,
                            margin: const EdgeInsets.only(right: 5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                _imageUrls[index],
                                width: (size.width / 4),
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consec- tetur adipiscing elit.',
                        style: TextStyle(
                          fontFamily: kDefaultFont,
                          fontSize: size.height * 0.0250,
                          fontWeight: FontWeight.w500,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      width: size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                CupertinoIcons.eye_fill,
                                color: kPlaceholderColor,
                                size: 20.0,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                '125,908 views',
                                style: TextStyle(
                                  fontFamily: kDefaultFont,
                                  fontSize: size.height * 0.0120,
                                  fontWeight: FontWeight.normal,
                                  color: kPlaceholderColor.withOpacity(0.75),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Row(
                            children: [
                              const Icon(
                                CupertinoIcons.heart_fill,
                                color: kPlaceholderColor,
                                size: 20.0,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                '47,987 likes',
                                style: TextStyle(
                                  fontFamily: kDefaultFont,
                                  fontSize: size.height * 0.0120,
                                  fontWeight: FontWeight.normal,
                                  color: kPlaceholderColor.withOpacity(0.75),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    const CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://randomuser.me/api/portraits/men/5.jpg"),
                                      maxRadius: 20,
                                    ),
                                    Positioned(
                                      bottom: 0.0,
                                      right: 0.0,
                                      child: Container(
                                        height: 15.0,
                                        width: 15.0,
                                        //padding: const EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          color: kOrangeColor,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            width: 1.0,
                                            color: kPrimaryColor,
                                          ),
                                        ),
                                        child: const Center(
                                          child: Icon(
                                            Icons.check,
                                            color: kWhiteColor,
                                            size: 10.0,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
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
                                          margin: const EdgeInsets.only(
                                              right: 50.0),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: kPrimaryColor
                                                  .withOpacity(0.65),
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              bottomLeft: Radius.circular(20.0),
                                              topRight: Radius.circular(20.0),
                                              bottomRight:
                                                  Radius.circular(20.0),
                                            ),
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(
            //height: size.height * 0.15,
            child: Container(
              margin: const EdgeInsets.only(
                bottom: 10,
                left: 15,
                right: 15,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: kBackgroundColor,
                border: Border.all(
                  color: kPrimaryColor.withOpacity(0.65),
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: TextFormField(
                      onChanged: (value) {},
                      maxLines: null,
                      textAlignVertical: TextAlignVertical.bottom,
                      //maxLength: 100,
                      textCapitalization: TextCapitalization.sentences,
                      style: TextStyle(
                        color: kPrimaryTextColor,
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.0200,
                        fontWeight: FontWeight.normal,
                      ),
                      decoration: const InputDecoration(
                        hintText: "Add comment...",
                        hintStyle: TextStyle(
                          color: kPrimaryTextColor,
                        ),
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
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
            ),
          ),
        
        ],
      ),
    );
  }

  final List<String> _imageUrls = [
    'https://images.pexels.com/photos/13169815/pexels-photo-13169815.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/13169815/pexels-photo-13169815.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/1936769/pexels-photo-1936769.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load',
    'https://images.pexels.com/photos/1936769/pexels-photo-1936769.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load',
  ];
}
