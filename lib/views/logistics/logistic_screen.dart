import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../../enums/logistic_type.dart';
import '../../enums/package_type.dart';
import '../../enums/trip_type.dart';
import '../../utils/app_button.dart';
import '../../utils/app_colors.dart';
import '../../utils/dimensions.dart';

class LogisticScreen extends StatefulWidget {
  const LogisticScreen({Key? key}) : super(key: key);

  @override
  State<LogisticScreen> createState() => _LogisticScreenState();
}

class _LogisticScreenState extends State<LogisticScreen> {
  bool iDrive = true;
  bool iRide = false;
  bool iSend = false;
  LogisticType? logisticType = LogisticType.intra;
  PackageType? packageType = PackageType.passenger;
  TripType? tripType = TripType.one;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.keyboard_backspace_rounded,
          color: kPrimaryColor,
          size: size.height * 0.0250,
        ),
        elevation: 0.0,
        backgroundColor: kBackgroundColor,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Logistics',
            style: TextStyle(
              fontSize: size.height * 0.0170,
              fontWeight: FontWeight.w500,
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              controller: ScrollController(
                keepScrollOffset: true,
              ),
              slivers: [
                SliverAppBar(
                  leadingWidth: 0.0,
                  elevation: 0.0,
                  toolbarHeight: 80.0,
                  automaticallyImplyLeading: false,
                  pinned: true,
                  backgroundColor: kBackgroundColor,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Column(
                      children: [
                        Container(
                          color: kPlaceholderColor.withOpacity(0.35),
                          height: 0.5,
                          width: size.width,
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          //height: 40.0,
                          width: size.width - 30,
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
                                    iDrive = true;
                                    iRide = false;
                                    iSend = false;
                                  });
                                },
                                child: Container(
                                  width: size.width / 3 - 20,
                                  padding: const EdgeInsets.symmetric(
                                    //vertical: 5.0,
                                    horizontal: 8.0,
                                  ),
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: iDrive
                                        ? kPrimaryColor
                                        : Colors.transparent,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'iDrive',
                                      style: TextStyle(
                                        color: iDrive
                                            ? kWhiteColor
                                            : kPrimaryColor,
                                        fontSize: size.height * 0.0150,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: iSend,
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
                                    iDrive = false;
                                    iRide = true;
                                    iSend = false;
                                  });
                                },
                                child: Container(
                                  width: size.width / 3 - 20,
                                  padding: const EdgeInsets.symmetric(
                                    //vertical: 5.0,
                                    horizontal: 8.0,
                                  ),
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: iRide
                                        ? kPrimaryColor
                                        : Colors.transparent,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'iRide',
                                      style: TextStyle(
                                        color:
                                            iRide ? kWhiteColor : kPrimaryColor,
                                        fontSize: size.height * 0.0150,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: iDrive,
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
                                    iDrive = false;
                                    iRide = false;
                                    iSend = true;
                                  });
                                },
                                child: Container(
                                  width: size.width / 3 - 20,
                                  padding: const EdgeInsets.symmetric(
                                    //vertical: 5.0,
                                    horizontal: 8.0,
                                  ),
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: iSend
                                        ? kPrimaryColor
                                        : Colors.transparent,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'iSend',
                                      style: TextStyle(
                                        color:
                                            iSend ? kWhiteColor : kPrimaryColor,
                                        fontSize: size.height * 0.0150,
                                      ),
                                    ),
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
                SliverToBoxAdapter(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 15.0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                logisticType = LogisticType.intra;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  'Intra City',
                                  style: TextStyle(
                                    fontFamily: kDefaultFont,
                                    fontSize: size.height * 0.0180,
                                    fontWeight: FontWeight.w500,
                                    color: logisticType == LogisticType.intra
                                        ? kPrimaryColor
                                        : kPlaceholderColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Container(
                                  height: 2,
                                  width: 30.0,
                                  decoration: BoxDecoration(
                                    color: logisticType == LogisticType.intra
                                        ? kPrimaryColor
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: size.width / 4.5,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                logisticType = LogisticType.inter;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  'Inter State',
                                  style: TextStyle(
                                    fontFamily: kDefaultFont,
                                    fontSize: size.height * 0.0180,
                                    fontWeight: FontWeight.w500,
                                    color: logisticType == LogisticType.inter
                                        ? kPrimaryColor
                                        : kPlaceholderColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Container(
                                  height: 2,
                                  width: 30.0,
                                  decoration: BoxDecoration(
                                    color: logisticType == LogisticType.inter
                                        ? kPrimaryColor
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, _index) => Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      // VehicleFirstStage(size: size)
                      //child: VehicleSecondStage(size: size),
                      //child: FaceVerificationWidget(size: size),
                      child: Column(
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
                                  size: size.height * 0.10,
                                ),
                                Text(
                                  'Ride',
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: size.height * 0.0150,
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
                                      child: packageType ==
                                              PackageType.passenger
                                          ? Container(
                                              height: size.height * 0.0180,
                                              width: size.height * 0.0180,
                                              padding:
                                                  const EdgeInsets.all(4.5),
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: kPrimaryColor,
                                              ),
                                              child: Container(
                                                height: size.height * 0.0140,
                                                width: size.height * 0.0140,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: kWhiteColor,
                                                ),
                                              ),
                                            )
                                          : Container(
                                              height: size.height * 0.0180,
                                              width: size.height * 0.0180,
                                              padding:
                                                  const EdgeInsets.all(4.5),
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
                                        fontSize: size.height * 0.0160,
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
                                              height: size.height * 0.0180,
                                              width: size.height * 0.0180,
                                              padding:
                                                  const EdgeInsets.all(4.5),
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: kPrimaryColor,
                                              ),
                                              child: Container(
                                                height: size.height * 0.0140,
                                                width: size.height * 0.0140,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: kWhiteColor,
                                                ),
                                              ),
                                            )
                                          : Container(
                                              height: size.height * 0.0180,
                                              width: size.height * 0.0180,
                                              padding:
                                                  const EdgeInsets.all(4.5),
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
                                        fontSize: size.height * 0.0160,
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
                              fontSize: size.height * 0.0150,
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
                                          fontSize: size.width * 0.030,
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
                                          fontSize: size.width * 0.030,
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
                            width: size.width,
                            height: size.height * 0.15,
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
                                          fontSize: size.height * 0.0160,
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
                                        padding:
                                            const EdgeInsets.only(left: 7.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              color: kPrimaryColor
                                                  .withOpacity(0.35),
                                              height: 7.0,
                                              width: 1.5,
                                            ),
                                            const SizedBox(
                                              height: 3.0,
                                            ),
                                            Container(
                                              color: kPrimaryColor
                                                  .withOpacity(0.35),
                                              height: 7.0,
                                              width: 1.5,
                                            ),
                                            const SizedBox(
                                              height: 3.0,
                                            ),
                                            Container(
                                              color: kPrimaryColor
                                                  .withOpacity(0.35),
                                              height: 7.0,
                                              width: 1.5,
                                            ),
                                            const SizedBox(
                                              height: 3.0,
                                            ),
                                            Container(
                                              color: kPrimaryColor
                                                  .withOpacity(0.35),
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
                                        width: size.width / 1.5,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: kOrangeColor,
                                        size: size.height * 0.0200,
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      SizedBox(
                                        width: size.width / 1.5,
                                        height: 30.0,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: kPlaceholderColor,
                                              ),
                                            ),
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: kPrimaryColor,
                                              ),
                                            ),
                                            hintText:
                                                'Enter preferred destination',
                                            //hintText: 'Destination',
                                            hintStyle: TextStyle(
                                              color: kPlaceholderColor,
                                              fontFamily: kDefaultFont,
                                              fontSize: size.height * 0.0160,
                                              fontWeight: FontWeight.normal,
                                            ),
                                            labelStyle: TextStyle(
                                              color: kPlaceholderColor,
                                              fontFamily: kDefaultFont,
                                              fontSize: size.height * 0.0160,
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
                                fontSize: size.height * 0.0160,
                                fontWeight: FontWeight.normal,
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 60.0,
                            width: size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                    vertical: 5.0,
                                  ),
                                  height: 50.0,
                                  width: size.width / 3,
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
                                            fontSize: size.height * 0.0160,
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
                                  width: size.width / 3,
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
                                            fontSize: size.height * 0.0160,
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
                      ),
                    ),
                    childCount: 1,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: size.height * 0.15,
            width: size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            decoration: const BoxDecoration(
              color: kBackgroundColor,
              boxShadow: [
                BoxShadow(
                  color: kPrimaryColor,
                  offset: Offset(0, 5),
                  blurRadius: 8.0,
                ),
              ],
            ),
            child: Center(
              child: AppButton(
                text: "Proceed",
                type: ButtonType.primary,
                onPressed: () {
                  //CustomRouter.nextScreen(context, "/logistic");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
