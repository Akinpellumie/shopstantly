import 'package:flutter/material.dart';

import '../../../enums/package_type.dart';
import '../../../enums/trip_type.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/dimensions.dart';

class IDriveWidget extends StatefulWidget {
  final Size size;
  const IDriveWidget({Key? key, required this.size}) : super(key: key);

  @override
  State<IDriveWidget> createState() => _IDriveWidgetState();
}

class _IDriveWidgetState extends State<IDriveWidget> {
  PackageType? packageType = PackageType.passenger;
  TripType? tripType = TripType.one;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 10.0,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.5,
              color: kPrimaryColor,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.commute_rounded,
                size: widget.size.height * 0.10,
              ),
              Text(
                'Ride',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: widget.size.height * 0.0150,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        packageType = PackageType.passenger;
                      });
                    },
                    child: packageType == PackageType.passenger
                        ? Container(
                            height: widget.size.height * 0.0180,
                            width: widget.size.height * 0.0180,
                            padding: const EdgeInsets.all(4.5),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: kPrimaryColor,
                            ),
                            child: Container(
                              height: widget.size.height * 0.0140,
                              width: widget.size.height * 0.0140,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: kWhiteColor,
                              ),
                            ),
                          )
                        : Container(
                            height: widget.size.height * 0.0180,
                            width: widget.size.height * 0.0180,
                            padding: const EdgeInsets.all(4.5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(
                                color: kPlaceholderColor,
                                width: 1.0,
                              ),
                            ),
                          ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Carry Passengers",
                    style: TextStyle(
                      fontSize: widget.size.height * 0.0160,
                      fontWeight: FontWeight.normal,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        packageType = PackageType.parcel;
                      });
                    },
                    child: packageType == PackageType.parcel
                        ? Container(
                            height: widget.size.height * 0.0180,
                            width: widget.size.height * 0.0180,
                            padding: const EdgeInsets.all(4.5),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: kPrimaryColor,
                            ),
                            child: Container(
                              height: widget.size.height * 0.0140,
                              width: widget.size.height * 0.0140,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: kWhiteColor,
                              ),
                            ),
                          )
                        : Container(
                            height: widget.size.height * 0.0180,
                            width: widget.size.height * 0.0180,
                            padding: const EdgeInsets.all(4.5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(
                                color: kPlaceholderColor,
                                width: 1.0,
                              ),
                            ),
                          ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Deliver Parcels",
                    style: TextStyle(
                      fontSize: widget.size.height * 0.0160,
                      fontWeight: FontWeight.normal,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown ",
          style: TextStyle(
            fontSize: widget.size.height * 0.0150,
            fontWeight: FontWeight.w300,
            color: kPrimaryColor,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30.0,
        ),
        Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    tripType = TripType.one;
                  });
                },
                child: Container(
                  //width: size.width / 4 - 10,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 5.0),
                  decoration: BoxDecoration(
                    color: tripType == TripType.one
                        ? kPrimaryColor
                        : Colors.transparent,
                    border: Border.all(
                      width: 1.0,
                      color: tripType == TripType.one
                          ? Colors.transparent
                          : kPlaceholderColor,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                    child: Text(
                      'One Trip',
                      style: TextStyle(
                        color: tripType == TripType.one
                            ? kWhiteColor
                            : kPlaceholderColor,
                        fontFamily: kDefaultFont,
                        fontSize: widget.size.width * 0.030,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              GestureDetector(
                onTap: () {
                  setState(() {
                    tripType = TripType.round;
                  });
                },
                child: Container(
                  //width: size.width / 4 - 10,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 5.0),
                  decoration: BoxDecoration(
                    color: tripType == TripType.round
                        ? kPrimaryColor
                        : Colors.transparent,
                    border: Border.all(
                      width: 1.0,
                      color: tripType == TripType.round
                          ? Colors.transparent
                          : kPlaceholderColor,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                    child: Text(
                      'Round Trip',
                      style: TextStyle(
                        color: tripType == TripType.round
                            ? kWhiteColor
                            : kPlaceholderColor,
                        fontFamily: kDefaultFont,
                        fontSize: widget.size.width * 0.030,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Container(
          padding: const EdgeInsets.only(left: 20.0),
          width: widget.size.width,
          height: widget.size.height * 0.15,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 15.0,
                      width: 15.0,
                      padding: const EdgeInsets.all(4.5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(
                          color: kPlaceholderColor,
                          width: 3.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Challenge, Ibadan MONO SHOP",
                      style: TextStyle(
                        fontSize: widget.size.height * 0.0160,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: Column(
                        children: [
                          Container(
                            color: kPrimaryColor.withOpacity(0.35),
                            height: 7.0,
                            width: 1.5,
                          ),
                          const SizedBox(
                            height: 3.0,
                          ),
                          Container(
                            color: kPrimaryColor.withOpacity(0.35),
                            height: 7.0,
                            width: 1.5,
                          ),
                          const SizedBox(
                            height: 3.0,
                          ),
                          Container(
                            color: kPrimaryColor.withOpacity(0.35),
                            height: 7.0,
                            width: 1.5,
                          ),
                          const SizedBox(
                            height: 3.0,
                          ),
                          Container(
                            color: kPrimaryColor.withOpacity(0.35),
                            height: 7.0,
                            width: 1.5,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 17.0,
                    ),
                    Container(
                      color: kPrimaryColor.withOpacity(0.35),
                      height: 0.5,
                      width: widget.size.width / 1.5,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: kOrangeColor,
                      size: widget.size.height * 0.0200,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    SizedBox(
                      width: widget.size.width / 1.5,
                      height: 30.0,
                      child: TextField(
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: kPlaceholderColor,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: kPrimaryColor,
                            ),
                          ),
                          hintText: 'Enter preferred destination',
                          //hintText: 'Destination',
                          hintStyle: TextStyle(
                            color: kPlaceholderColor,
                            fontFamily: kDefaultFont,
                            fontSize: widget.size.height * 0.0160,
                            fontWeight: FontWeight.normal,
                          ),
                          labelStyle: TextStyle(
                            color: kPlaceholderColor,
                            fontFamily: kDefaultFont,
                            fontSize: widget.size.height * 0.0160,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Departure Details",
            style: TextStyle(
              fontSize: widget.size.height * 0.0160,
              fontWeight: FontWeight.normal,
              color: kPrimaryColor,
            ),
          ),
        ),
        SizedBox(
          height: 60.0,
          width: widget.size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                height: 50.0,
                width: widget.size.width / 2 - 25,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.0,
                    color: kPrimaryColor,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "8pm",
                        style: TextStyle(
                          fontSize: widget.size.height * 0.0160,
                          fontWeight: FontWeight.w500,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.add_circle,
                      color: kPrimaryColor,
                      size: 25.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                height: 50.0,
                width: widget.size.width / 2 - 25,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.0,
                    color: kPrimaryColor,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "8pm",
                        style: TextStyle(
                          fontSize: widget.size.height * 0.0160,
                          fontWeight: FontWeight.w500,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.add_circle,
                      color: kPrimaryColor,
                      size: 25.0,
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
