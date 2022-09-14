import 'package:flutter/material.dart';
import 'package:shopstantly_app/views/logistics/widgets/idrive_widget.dart';
import 'package:shopstantly_app/views/logistics/widgets/iride_widget.dart';

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
                                    logisticType = LogisticType.intra;
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
                                    logisticType = LogisticType.intra;
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
                                    logisticType = LogisticType.intra;
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
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    margin: const EdgeInsets.only(bottom: 15.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          // SizedBox(
                          //   width: iRide ? 0 : size.width / 4.5,
                          // ),
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
                          // SizedBox(
                          //   width: iRide ? size.width / 0.0 : size.width / 4.5,
                          // ),
                          Visibility(
                            visible: iRide,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  logisticType = LogisticType.abroad;
                                });
                              },
                              child: Column(
                                children: [
                                  Text(
                                    'Abroad',
                                    style: TextStyle(
                                      fontFamily: kDefaultFont,
                                      fontSize: size.height * 0.0180,
                                      fontWeight: FontWeight.w500,
                                      color: logisticType == LogisticType.abroad
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
                                      color: logisticType == LogisticType.abroad
                                          ? kPrimaryColor
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ],
                              ),
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
                      //child: IDriveWidget(size: size),
                      child: iDrive
                          ? IDriveWidget(size: size)
                          : IRideWidget(size: size),
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
              child: iDrive
                  ? AppButton(
                      text: "Go Online",
                      type: ButtonType.primary,
                      onPressed: () {
                        //CustomRouter.nextScreen(context, "/logistic");
                      },
                    )
                  : AppButton(
                      text: "Search For Trips (For 2 People)",
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
