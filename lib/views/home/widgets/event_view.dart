import 'package:flutter/material.dart';
import 'package:shopstantly_app/utils/app_colors.dart';

import '../../../utils/dimensions.dart';
import '../components/event_card_item.dart';

class EventView extends StatefulWidget {
  const EventView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<EventView> createState() => _EventViewState();
}

class _EventViewState extends State<EventView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(
          height: 10.0,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'Happening Now(56)',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: widget.size.height * 0.0150,
                  fontFamily: kDefaultFont,
                ),
              ),
            ),
            Text(
              'See all',
              style: TextStyle(
                color: kBlueColor,
                fontWeight: FontWeight.w500,
                fontSize: widget.size.height * 0.0150,
                fontFamily: kDefaultFont,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        SizedBox(
          height: size.height * 0.28,
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 4,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Container(
                height: size.height * 0.27,
                width: size.width * 0.65,
                margin: const EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: kEventBgColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0),
                            ),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1587502537745-84b86da1204f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8b2NlYW58ZW58MHx8MHx8&w=1000&q=80',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 10.0,
                            right: 10.0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 5.0),
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Center(
                                child: Text(
                                  'MAR 05'.toUpperCase(),
                                  style: TextStyle(
                                    color: kWhiteColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: widget.size.height * 0.0150,
                                    fontFamily: kDefaultFont,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 10.0,
                          ),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Maroon 5',
                                        style: TextStyle(
                                          color: kPrimaryColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: widget.size.height * 0.0180,
                                          fontFamily: kDefaultFont,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Recife, Brazil',
                                        style: TextStyle(
                                          color: kPlaceholderColor,
                                          fontWeight: FontWeight.normal,
                                          fontSize: widget.size.height * 0.0150,
                                          fontFamily: kDefaultFont,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(15.0),
                                    border: Border.all(
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Follow Update',
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: widget.size.height * 0.0150,
                                        fontFamily: kDefaultFont,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'Upcoming (56)',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: widget.size.height * 0.0150,
                  fontFamily: kDefaultFont,
                ),
              ),
            ),
            Text(
              'See all',
              style: TextStyle(
                color: kBlueColor,
                fontWeight: FontWeight.w500,
                fontSize: widget.size.height * 0.0150,
                fontFamily: kDefaultFont,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
        EventCardItem(size: widget.size),
        const SizedBox(
          height: 15.0,
        ),
        EventCardItem(size: widget.size),
        const SizedBox(
          height: 15.0,
        ),
        EventCardItem(size: widget.size),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
