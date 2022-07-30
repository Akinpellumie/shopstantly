import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../models/chats/chat_message.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/assets_path.dart';
import '../../../../utils/dimensions.dart';

class CommerceChatView extends StatefulWidget {
  const CommerceChatView({
    Key? key,
    required this.messages,
    required this.size,
  }) : super(key: key);

  final List<ChatMessage> messages;
  final Size size;

  @override
  State<CommerceChatView> createState() => _CommerceChatViewState();
}

class _CommerceChatViewState extends State<CommerceChatView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.messages.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.only(
                      left: 14, right: 14, top: 10, bottom: 10),
                  child: widget.messages[index].messageType == "receiver"
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
                                        widget.messages[index].messageContent,
                                        style: TextStyle(
                                          fontFamily: kDefaultFont,
                                          fontSize: widget.size.height * 0.0175,
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
                                        fontSize: widget.size.height * 0.0150,
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
                                          widget.messages[index].messageContent,
                                          style: TextStyle(
                                            fontFamily: kDefaultFont,
                                            fontSize:
                                                widget.size.height * 0.0175,
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
                                          fontSize: widget.size.height * 0.0150,
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
                                width: widget.size.height * 0.0300,
                                height: widget.size.height * 0.0350,
                                child: SvgPicture.asset(
                                  AssetsPath.attachment,
                                  color: kTimeTextColor,
                                  width: widget.size.height * 0.0250,
                                  height: widget.size.height * 0.0300,
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
                                fontSize: widget.size.height * 0.0150,
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
                              width: widget.size.height * 0.0250,
                              height: widget.size.height * 0.0300,
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
                        width: widget.size.height * 0.0300,
                        height: widget.size.height * 0.0400,
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
}
