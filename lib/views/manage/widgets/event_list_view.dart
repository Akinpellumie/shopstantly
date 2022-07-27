import 'package:face_pile/face_pile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/dimensions.dart';

class EventListView extends StatelessWidget {
  const EventListView({
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
            'Event Requests (12)',
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
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: size.height * 0.075,
                    width: size.height * 0.075,
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
                    bottom: -7.0,
                    right: -12.0,
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
                          color: kOrangeColor),
                      // width: 30,
                      // height: 25,
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          '22',
                          style: TextStyle(
                            color: kWhiteColor,
                            fontFamily: kDefaultFont,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Wed, April  28 • 5:30PM',
                    style: TextStyle(
                      fontFamily: kDefaultFont,
                      fontSize: size.height * 0.0140,
                      fontWeight: FontWeight.normal,
                      color: kPlaceholderColor,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    'Golden Jubillee Birthday for Mrs SALAKO',
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
                                size: size.height * 0.0200,
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Mauve 21, Ring road, ibadan',
                                  style: TextStyle(
                                    fontFamily: kDefaultFont,
                                    fontSize: size.height * 0.0140,
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
                    children: [
                      FacePile(
                        radius: 15,
                        space: 20,
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
                      Text(
                        '+20 Joined',
                        style: TextStyle(
                          fontFamily: kDefaultFont,
                          fontSize: size.height * 0.0140,
                          fontWeight: FontWeight.normal,
                          color: kPlaceholderColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5.0,
                    vertical: 2.0,
                  ),
                  decoration: BoxDecoration(
                    color: kBlueColor,
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: kWhiteColor,
                        size: size.height * 0.0200,
                      ),
                      const SizedBox(
                        width: 3.0,
                      ),
                      Text(
                        'Upcoming',
                        style: TextStyle(
                            color: kWhiteColor,
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.0150),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      AssetsPath.pin,
                      color: kIconColor,
                      height: size.height * 0.0180,
                      width: size.height * 0.0180,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    SvgPicture.asset(
                      AssetsPath.volumeOff,
                      color: kIconColor,
                      height: size.height * 0.0180,
                      width: size.height * 0.0180,
                    )
                  ],
                ),
              ],
            )
          ],
        ),
        Container(
          height: 1.0,
          width: double.infinity,
          color: kPlaceholderColor.withOpacity(0.15),
          margin: const EdgeInsets.symmetric(vertical: 10.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: size.height * 0.075,
                    width: size.height * 0.075,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://i.pravatar.cc/300?img=2',
                        ),
                      ),
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -7.0,
                    right: -12.0,
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
                          color: kOrangeColor),
                      // width: 30,
                      // height: 25,
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          '22',
                          style: TextStyle(
                            color: kWhiteColor,
                            fontFamily: kDefaultFont,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Wed, April  28 • 5:30PM',
                    style: TextStyle(
                      fontFamily: kDefaultFont,
                      fontSize: size.height * 0.0140,
                      fontWeight: FontWeight.normal,
                      color: kPlaceholderColor,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    'Silver Jubillee Birthday for Ms Gold',
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
                                size: size.height * 0.0200,
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Mauve 21, Ring road, ibadan',
                                  style: TextStyle(
                                    fontFamily: kDefaultFont,
                                    fontSize: size.height * 0.0140,
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
                    children: [
                      FacePile(
                        radius: 15,
                        space: 20,
                        images: const [
                          NetworkImage("https://i.pravatar.cc/300?img=2"),
                          NetworkImage("https://i.pravatar.cc/300?img=3"),
                          NetworkImage("https://i.pravatar.cc/300?img=1"),
                        ],
                        border: Border.all(color: kWhiteColor, width: 2),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '+18 Joined',
                        style: TextStyle(
                          fontFamily: kDefaultFont,
                          fontSize: size.height * 0.0140,
                          fontWeight: FontWeight.normal,
                          color: kPlaceholderColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5.0,
                    vertical: 2.0,
                  ),
                  decoration: BoxDecoration(
                    color: kOrangeColor,
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: kWhiteColor,
                        size: size.height * 0.0200,
                      ),
                      const SizedBox(
                        width: 3.0,
                      ),
                      Text(
                        'Live',
                        style: TextStyle(
                            color: kWhiteColor,
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.0150),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      AssetsPath.pin,
                      color: kIconColor,
                      height: size.height * 0.0180,
                      width: size.height * 0.0180,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    SvgPicture.asset(
                      AssetsPath.volumeOff,
                      color: kIconColor,
                      height: size.height * 0.0180,
                      width: size.height * 0.0180,
                    )
                  ],
                ),
              ],
            )
          ],
        ),
        Container(
          height: 1.0,
          width: double.infinity,
          color: kPlaceholderColor.withOpacity(0.15),
          margin: const EdgeInsets.symmetric(vertical: 10.0),
        ),
      ],
    );
  }
}
