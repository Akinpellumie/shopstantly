import 'package:face_pile/face_pile.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/dimensions.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          height: 15.0,
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 5.0,
          ),
          child: Row(
            children: [
              FacePile(
                radius: 30,
                space: 5,
                images: const [
                  NetworkImage("https://i.pravatar.cc/300?img=1"),
                  NetworkImage("https://i.pravatar.cc/300?img=2"),
                  NetworkImage("https://i.pravatar.cc/300?img=3"),
                ],
                border: Border.all(color: kWhiteColor, width: 2),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Golden Jubilee Birthday',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.0180,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      'Phillips Started following you testing spacing and all',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.0150,
                        fontWeight: FontWeight.normal,
                        color: kPlaceholderColor,
                        overflow: TextOverflow.ellipsis,
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
        Container(
          height: 1.0,
          width: double.infinity,
          color: kPlaceholderColor.withOpacity(0.15),
          margin: const EdgeInsets.symmetric(vertical: 5.0),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 5.0,
          ),
          child: Row(
            children: [
              FacePile(
                radius: 30,
                space: 5,
                images: const [
                  //NetworkImage("https://i.pravatar.cc/300?img=1"),
                  NetworkImage("https://i.pravatar.cc/300?img=2"),
                  NetworkImage("https://i.pravatar.cc/300?img=3"),
                ],
                border: Border.all(color: kWhiteColor, width: 2),
              ),
              const SizedBox(
                width: 10.0,
              ),
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
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      'Phillips Started following you testing spacing and all',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.0150,
                        fontWeight: FontWeight.normal,
                        color: kPlaceholderColor,
                        overflow: TextOverflow.ellipsis,
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
                      '84',
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
        Container(
          height: 1.0,
          width: double.infinity,
          color: kPlaceholderColor.withOpacity(0.15),
          margin: const EdgeInsets.symmetric(vertical: 5.0),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 5.0,
          ),
          child: Row(
            children: [
              SizedBox.fromSize(
                size: const Size.fromRadius(30),
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    FittedBox(
                      child: ClipOval(
                        child: Image.network("https://i.pravatar.cc/300?img=3"),
                      ),
                    ),
                    Positioned(
                      right: 1,
                      bottom: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: kWhiteColor,
                              width: 2,
                            ),
                            shape: BoxShape.circle,
                            color: Colors.green),
                        width: 30 / 2,
                        height: 30 / 2,
                      ),
                    )
                  ],
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
                      'Leonard Lotea',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.0180,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      'Phillips Started following you testing spacing and all',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: size.height * 0.0150,
                        fontWeight: FontWeight.normal,
                        color: kPlaceholderColor,
                        overflow: TextOverflow.ellipsis,
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
                      '4',
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
    );
  }
}
