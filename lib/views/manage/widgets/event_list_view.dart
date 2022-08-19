import 'package:face_pile/face_pile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/dimensions.dart';

class EventListView extends StatefulWidget {
  const EventListView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<EventListView> createState() => _EventListViewState();
}

class _EventListViewState extends State<EventListView> {
  bool isForYou = true;
  bool isTicket = false;
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
                  'Event Requests (12)',
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
                    isForYou = true;
                    isTicket = false;
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
                    color: isForYou ? kPrimaryColor : Colors.transparent,
                  ),
                  child: Center(
                    child: Text(
                      'For You',
                      style: TextStyle(
                        color: isForYou ? kWhiteColor : kPrimaryColor,
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
                    isForYou = false;
                    isTicket = true;
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
                    color: isTicket ? kPrimaryColor : Colors.transparent,
                  ),
                  child: Center(
                    child: Text(
                      'Tickets',
                      style: TextStyle(
                        color: isTicket ? kWhiteColor : kPrimaryColor,
                        fontSize: widget.size.height * 0.0150,
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: isForYou,
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
                    isForYou = false;
                    isTicket = false;
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
                      'My Events',
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
          height: 25.0,
        ),
        SizedBox(
          //height: 100.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: 80.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://i.pravatar.cc/300?img=3',
                          ),
                        ),
                        borderRadius: BorderRadius.circular(
                          15.0,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 0.0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6.0,
                          vertical: 2.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13.0),
                          border: Border.all(
                            color: kWhiteColor,
                            width: 2,
                          ),
                          color: kPrimaryColor,
                        ),
                        // width: 30,
                        // height: 25,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '22',
                            style: TextStyle(
                              color: kWhiteColor,
                              fontFamily: kDefaultFont,
                              fontSize: widget.size.height * 0.0130,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Wed, April  28 • 5:30PM',
                            style: TextStyle(
                              fontFamily: kDefaultFont,
                              fontSize: widget.size.height * 0.0130,
                              fontWeight: FontWeight.normal,
                              color: kPlaceholderColor,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          AssetsPath.pin,
                          color: kIconColor,
                          height: widget.size.height * 0.0180,
                          width: widget.size.height * 0.0180,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      'Golden Jubillee Birthday for Mrs SALAKO',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: widget.size.height * 0.0150,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: SizedBox(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: kPlaceholderColor,
                                  size: widget.size.height * 0.0200,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Expanded(
                                  child: Text(
                                    'Mauve 21, Ring road, ibadan',
                                    style: TextStyle(
                                      fontFamily: kDefaultFont,
                                      fontSize: widget.size.height * 0.0140,
                                      fontWeight: FontWeight.normal,
                                      color: kPlaceholderColor,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              FacePile(
                                radius: 13,
                                space: 14,
                                images: const [
                                  NetworkImage(
                                      "https://i.pravatar.cc/300?img=1"),
                                  NetworkImage(
                                      "https://i.pravatar.cc/300?img=2"),
                                  NetworkImage(
                                      "https://i.pravatar.cc/300?img=3"),
                                ],
                                border:
                                    Border.all(color: kWhiteColor, width: 2),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                '+20 Joined',
                                style: TextStyle(
                                  fontFamily: kDefaultFont,
                                  fontSize: widget.size.height * 0.0140,
                                  fontWeight: FontWeight.normal,
                                  color: kPlaceholderColor,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 25.0,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                            //vertical: 3.0,
                          ),
                          margin: const EdgeInsets.only(right: 5.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kPrimaryColor,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Upcoming',
                              style: TextStyle(
                                fontFamily: kDefaultFont,
                                fontSize: widget.size.height * 0.0130,
                                fontWeight: FontWeight.normal,
                                color: kPrimaryColor,
                              ),
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
        
        const SizedBox(
          height: 25.0,
        ),
        SizedBox(
          //height: 100.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: 80.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://i.pravatar.cc/300?img=3',
                          ),
                        ),
                        borderRadius: BorderRadius.circular(
                          15.0,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 0.0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6.0,
                          vertical: 2.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13.0),
                          border: Border.all(
                            color: kWhiteColor,
                            width: 2,
                          ),
                          color: kPrimaryColor,
                        ),
                        // width: 30,
                        // height: 25,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '22',
                            style: TextStyle(
                              color: kWhiteColor,
                              fontFamily: kDefaultFont,
                              fontSize: widget.size.height * 0.0130,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Wed, April  28 • 5:30PM',
                            style: TextStyle(
                              fontFamily: kDefaultFont,
                              fontSize: widget.size.height * 0.0130,
                              fontWeight: FontWeight.normal,
                              color: kPlaceholderColor,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          AssetsPath.pin,
                          color: kIconColor,
                          height: widget.size.height * 0.0180,
                          width: widget.size.height * 0.0180,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      'Golden Jubillee Birthday for Mrs SALAKO',
                      style: TextStyle(
                        fontFamily: kDefaultFont,
                        fontSize: widget.size.height * 0.0150,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: SizedBox(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: kPlaceholderColor,
                                  size: widget.size.height * 0.0200,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Expanded(
                                  child: Text(
                                    'Mauve 21, Ring road, ibadan',
                                    style: TextStyle(
                                      fontFamily: kDefaultFont,
                                      fontSize: widget.size.height * 0.0140,
                                      fontWeight: FontWeight.normal,
                                      color: kPlaceholderColor,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              FacePile(
                                radius: 13,
                                space: 14,
                                images: const [
                                  NetworkImage(
                                      "https://i.pravatar.cc/300?img=1"),
                                  NetworkImage(
                                      "https://i.pravatar.cc/300?img=2"),
                                  NetworkImage(
                                      "https://i.pravatar.cc/300?img=3"),
                                ],
                                border:
                                    Border.all(color: kWhiteColor, width: 2),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                '+20 Joined',
                                style: TextStyle(
                                  fontFamily: kDefaultFont,
                                  fontSize: widget.size.height * 0.0140,
                                  fontWeight: FontWeight.normal,
                                  color: kPlaceholderColor,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 25.0,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                            //vertical: 3.0,
                          ),
                          margin: const EdgeInsets.only(right: 5.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kPrimaryColor,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              'Past',
                              style: TextStyle(
                                fontFamily: kDefaultFont,
                                fontSize: widget.size.height * 0.0130,
                                fontWeight: FontWeight.normal,
                                color: kPrimaryColor,
                              ),
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
        const SizedBox(
          height: 25.0,
        ),
      ],
    );
  }
}
