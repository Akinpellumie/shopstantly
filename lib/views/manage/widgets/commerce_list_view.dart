import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/dimensions.dart';


class CommerceListView extends StatelessWidget {
  const CommerceListView({
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
            'Transaction Requests (12)',
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
                              fontFamily: kDefaultFont),
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
                    'Kerah Integrated Plc',
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
                    '6:00 PM, Fri, Apr 23   -   6:00 PM, Fri, Apr 23',
                    style: TextStyle(
                      fontFamily: kDefaultFont,
                      fontSize: size.height * 0.0140,
                      fontWeight: FontWeight.normal,
                      color: kPlaceholderColor,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: SizedBox(
                          child: Row(
                            children: [
                              Icon(
                                Icons.my_location_outlined,
                                color: kOrangeColor,
                                size: size.height * 0.0200,
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Lot 13 • Oakland, CA',
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
                      const SizedBox(
                        width: 5.0,
                      ),
                      Expanded(
                        child: SizedBox(
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: kOrangeColor,
                                size: size.height * 0.0200,
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Moved from warehouse',
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
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: size.height * 0.040,
                            width: size.height * 0.040,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://i.pravatar.cc/300?img=3',
                                ),
                              ),
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                            ),
                          ),
                          Container(
                            height: size.height * 0.040,
                            width: size.height * 0.040,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://i.pravatar.cc/300?img=1',
                                ),
                              ),
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                            ),
                          ),
                          Container(
                            height: size.height * 0.040,
                            width: size.height * 0.040,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://i.pravatar.cc/300?img=2',
                                ),
                              ),
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '+20 others',
                            style: TextStyle(
                              fontFamily: kDefaultFont,
                              fontSize: size.height * 0.0140,
                              fontWeight: FontWeight.normal,
                              color: kPrimaryColor,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            '\$1200.00',
                            style: TextStyle(
                              fontFamily: kDefaultFont,
                              fontSize: size.height * 0.0180,
                              fontWeight: FontWeight.normal,
                              color: kOrangeColor,
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
