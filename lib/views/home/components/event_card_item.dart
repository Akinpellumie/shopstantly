import 'package:face_pile/face_pile.dart';
import 'package:flutter/cupertino.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/dimensions.dart';

class EventCardItem extends StatelessWidget {
  const EventCardItem({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: kWhiteColor,
        boxShadow: const [
          BoxShadow(
              color: kBoxShadowColor, offset: Offset(3, 6), blurRadius: 7.0)
        ],
      ),
      child: Column(
        children: [
          Container(
            height: size.height * 0.25,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                AssetsPath.fruit,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Text(
                  'Wed, April 28',
                  softWrap: true,
                  style: TextStyle(
                    color: kPrimaryTextColor,
                    fontSize: size.width * 0.025,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Container(
                  height: 5.0,
                  width: 5.0,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: kPlaceholderColor),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  '5:30 PM - 7:30 PM',
                  softWrap: true,
                  style: TextStyle(
                    color: kPrimaryTextColor,
                    fontSize: size.width * 0.025,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                text: "Jo Malone London's Mother's Day Presents - ",
                style: TextStyle(
                  fontFamily: kDefaultFont,
                  fontSize: size.height * 0.0180,
                  fontWeight: FontWeight.w500,
                  color: kPrimaryColor,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: ' #JoMalone',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w300,
                      fontSize: size.height * 0.0150,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Icon(
                CupertinoIcons.location,
                color: kPlaceholderColor,
              ),
              const SizedBox(
                width: 5.0,
              ),
              Flexible(
                child: Text(
                  'Mauve 21, Ring Road, Ibadan, Nigeria',
                  style: TextStyle(
                    color: kPlaceholderColor,
                    fontFamily: kDefaultFont,
                    fontWeight: FontWeight.w400,
                    fontSize: size.width * 0.030,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              FacePile(
                radius: 20,
                space: 30,
                images: const [
                  NetworkImage("https://i.pravatar.cc/300?img=1"),
                  NetworkImage("https://i.pravatar.cc/300?img=2"),
                  NetworkImage("https://i.pravatar.cc/300?img=3"),
                ],
                border: Border.all(color: kWhiteColor, width: 2),
              ),
              const SizedBox(
                width: 5.0,
              ),
              Flexible(
                child: Text(
                  '+20 Going',
                  style: TextStyle(
                    color: kPurpleDarkColor,
                    fontFamily: kDefaultFont,
                    fontWeight: FontWeight.w400,
                    fontSize: size.width * 0.030,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    CupertinoIcons.heart,
                    color: kPlaceholderColor,
                    size: size.height * 0.025,
                  ),
                  const SizedBox(
                    width: 7.0,
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          CupertinoIcons.chat_bubble,
                          color: kPlaceholderColor,
                          size: size.height * 0.025,
                        ),
                        const SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          '43',
                          style: TextStyle(
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.0150,
                            fontWeight: FontWeight.w300,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          CupertinoIcons.bookmark,
                          color: kPlaceholderColor,
                          size: size.height * 0.025,
                        ),
                        const SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          'Wishlist',
                          style: TextStyle(
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.0150,
                            fontWeight: FontWeight.w300,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(right: 10.0),
                child: Icon(
                  CupertinoIcons.paperplane,
                  color: kPlaceholderColor,
                  size: size.height * 0.020,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
