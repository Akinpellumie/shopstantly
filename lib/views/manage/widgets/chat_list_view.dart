import 'package:face_pile/face_pile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopstantly_app/utils/custom_router.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/dimensions.dart';

class ChatListView extends StatefulWidget {
  const ChatListView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<ChatListView> createState() => _ChatListViewState();
}

class _ChatListViewState extends State<ChatListView> {
  bool isPersonal = true;
  bool isCorporate = false;
  bool isEvent = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10.0,
        ),
        Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Message Requests (12)',
                  style: TextStyle(
                    fontFamily: kDefaultFont,
                    fontSize: widget.size.height * 0.0180,
                    fontWeight: FontWeight.w500,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
            Container(
              height: 20.0,
              width: 20.0,
              margin: const EdgeInsets.only(right: 5.0),
              child: SvgPicture.asset(AssetsPath.searchIcon),
            ),
            GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.add,
                color: kPlaceholderColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
        Container(
          height: 40.0,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 5.0,
            vertical: 4.0,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: kPlaceholderColor.withOpacity(0.5),
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isPersonal = true;
                    isCorporate = false;
                    isEvent = false;
                  });
                },
                child: Container(
                  width: widget.size.width / 3 - 20,
                  padding: const EdgeInsets.symmetric(
                    //vertical: 5.0,
                    horizontal: 8.0,
                  ),
                  height: 35.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: isPersonal ? kPrimaryColor : Colors.transparent,
                  ),
                  child: Center(
                    child: Text(
                      'Personal',
                      style: TextStyle(
                        color: isPersonal ? kWhiteColor : kPrimaryColor,
                        fontSize: widget.size.height * 0.0150,
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: isEvent,
                child: Container(
                  width: 0.5,
                  height: 25.0,
                  decoration: const BoxDecoration(
                    color: kPlaceholderColor,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isPersonal = false;
                    isCorporate = true;
                    isEvent = false;
                  });
                },
                child: Container(
                  width: widget.size.width / 3 - 20,
                  padding: const EdgeInsets.symmetric(
                    //vertical: 5.0,
                    horizontal: 8.0,
                  ),
                  height: 35.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: isCorporate ? kPrimaryColor : Colors.transparent,
                  ),
                  child: Center(
                    child: Text(
                      'Corporate',
                      style: TextStyle(
                        color: isCorporate ? kWhiteColor : kPrimaryColor,
                        fontSize: widget.size.height * 0.0150,
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: isPersonal,
                child: Container(
                  width: 0.5,
                  height: 25.0,
                  decoration: const BoxDecoration(
                    color: kPlaceholderColor,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isPersonal = false;
                    isCorporate = false;
                    isEvent = true;
                  });
                },
                child: Container(
                  width: widget.size.width / 3 - 20,
                  padding: const EdgeInsets.symmetric(
                    //vertical: 5.0,
                    horizontal: 8.0,
                  ),
                  height: 35.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: isEvent ? kPrimaryColor : Colors.transparent,
                  ),
                  child: Center(
                    child: Text(
                      'Event',
                      style: TextStyle(
                        color: isEvent ? kWhiteColor : kPrimaryColor,
                        fontSize: widget.size.height * 0.0150,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        GestureDetector(
          onTap: () => CustomRouter.nextScreen(context, '/chatDetail'),
          child: Container(
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
                          fontSize: widget.size.height * 0.0180,
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
                          fontSize: widget.size.height * 0.0150,
                          fontWeight: FontWeight.normal,
                          color: kPlaceholderColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: [
                      Text(
                        '05:34',
                        style: TextStyle(
                          fontFamily: kDefaultFont,
                          fontSize: widget.size.height * 0.0180,
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
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text(
                          '120',
                          style: TextStyle(
                            fontFamily: kDefaultFont,
                            fontSize: widget.size.height * 0.0150,
                            fontWeight: FontWeight.normal,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 1.0,
          width: double.infinity,
          color: kPlaceholderColor.withOpacity(0.15),
          margin: const EdgeInsets.symmetric(vertical: 5.0),
        ),
        GestureDetector(
          onTap: () => CustomRouter.nextScreen(context, '/chatDetail'),
          child: Container(
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
                          fontSize: widget.size.height * 0.0180,
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
                          fontSize: widget.size.height * 0.0150,
                          fontWeight: FontWeight.normal,
                          color: kPlaceholderColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: [
                      Text(
                        '05:34',
                        style: TextStyle(
                          fontFamily: kDefaultFont,
                          fontSize: widget.size.height * 0.0180,
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
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text(
                          '84',
                          style: TextStyle(
                            fontFamily: kDefaultFont,
                            fontSize: widget.size.height * 0.0150,
                            fontWeight: FontWeight.normal,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
                        fontSize: widget.size.height * 0.0180,
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
                        fontSize: widget.size.height * 0.0150,
                        fontWeight: FontWeight.normal,
                        color: kPlaceholderColor,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20.0),
                child: Column(
                  children: [
                    Text(
                      '05:34',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: widget.size.height * 0.0180,
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
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        '4',
                        style: TextStyle(
                          fontFamily: kDefaultFont,
                          fontSize: widget.size.height * 0.0150,
                          fontWeight: FontWeight.normal,
                          color: kWhiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
