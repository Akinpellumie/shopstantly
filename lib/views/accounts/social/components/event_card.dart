import 'package:face_pile/face_pile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/custom_router.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/assets_path.dart';
import '../../../../utils/dimensions.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    required this.index,
    required this.size,
  }) : super(key: key);

  final int index;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => CustomRouter.nextScreen(context, '/eventDetail'),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    AssetsPath.flyer,
                    height: 300.0,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                  top: 10.0,
                  right: 10.0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 7.0,
                      vertical: 4.0,
                    ),
                    decoration: BoxDecoration(
                        color: index == 0 ? kOrangeColor : kWhiteColor,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Text(
                      index == 0 ? 'Live' : 'Upcoming',
                      style: TextStyle(
                          color: index == 0 ? kWhiteColor : kPrimaryColor,
                          fontFamily: kDefaultFont,
                          fontSize: size.height * 0.0135,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'International Band Music Concert - ',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: size.width * 0.045,
                          fontWeight: FontWeight.normal,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' #IntBandConcert',
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w300,
                                fontSize: size.width * 0.035,
                                fontStyle: FontStyle.italic),
                          )
                        ]),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Row(
                          children: <Widget>[
                            const Icon(
                              Icons.calendar_month_outlined,
                              color: kPlaceholderColor,
                            ),
                            const SizedBox(
                              width: 7.0,
                            ),
                            Text(
                              'Mon, Apr 18 · 21:00 Pm',
                              style: TextStyle(
                                color: kPlaceholderColor,
                                fontFamily: kDefaultFont,
                                fontWeight: FontWeight.w400,
                                fontSize: size.width * 0.030,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Row(
                          children: <Widget>[
                            const Icon(
                              CupertinoIcons.location,
                              color: kPlaceholderColor,
                            ),
                            const SizedBox(
                              width: 7.0,
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
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Row(
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
                                  color: kPrimaryColor,
                                  fontFamily: kDefaultFont,
                                  fontWeight: FontWeight.w400,
                                  fontSize: size.width * 0.030,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7.0, vertical: 5.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: kPrimaryColor,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: RichText(
                          text: TextSpan(
                            text: 'Join',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: size.width * 0.040,
                              fontWeight: FontWeight.bold,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' (\$50.00)',
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: size.width * 0.035,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
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
    );
  }
}
