import 'package:flutter/material.dart';
import 'package:shopstantly_app/enums/vehicle_type.dart';
import 'package:shopstantly_app/views/logistics/widgets/car_data_widget.dart';
import 'package:shopstantly_app/views/logistics/widgets/success_widget.dart';

import '../../utils/app_colors.dart';
import '../../utils/dimensions.dart';

class LogisticVerificationScreen extends StatefulWidget {
  const LogisticVerificationScreen({Key? key}) : super(key: key);

  @override
  State<LogisticVerificationScreen> createState() =>
      _LogisticVerificationScreenState();
}

class _LogisticVerificationScreenState
    extends State<LogisticVerificationScreen> {
  int selectedIndex = 0;
  VehicleType? vehicleType = VehicleType.car;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.keyboard_backspace_rounded,
          color: kPrimaryColor,
          size: size.height * 0.045,
        ),
        elevation: 0.0,
        backgroundColor: kBackgroundColor,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Logistics',
            style: TextStyle(
              fontSize: size.height * 0.020,
              fontWeight: FontWeight.w500,
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        controller: ScrollController(
          keepScrollOffset: true,
        ),
        slivers: [
          SliverAppBar(
            leadingWidth: 0.0,
            elevation: 0.0,
            automaticallyImplyLeading: false,
            pinned: true,
            backgroundColor: kBackgroundColor,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.all(0.0),
              centerTitle: false,
              title: Column(
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            vehicleType = VehicleType.car;
                          });
                        },
                        child: Text(
                          'Car',
                          style: TextStyle(
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.020,
                            fontWeight: vehicleType == VehicleType.car
                                ? FontWeight.bold
                                : FontWeight.w500,
                            color: vehicleType == VehicleType.car
                                ? kPrimaryColor
                                : kPlaceholderColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width / 3,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            vehicleType = VehicleType.bus;
                          });
                        },
                        child: Text(
                          'Bus',
                          style: TextStyle(
                            fontFamily: kDefaultFont,
                            fontSize: size.height * 0.020,
                            fontWeight: vehicleType == VehicleType.bus
                                ? FontWeight.bold
                                : FontWeight.w500,
                            color: vehicleType == VehicleType.bus
                                ? kPrimaryColor
                                : kPlaceholderColor,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     GestureDetector(
                  //       onTap: () {
                  //         setState(() {
                  //           selectedIndex = 0;
                  //         });
                  //       },
                  //       child: menuTabItem(
                  //         size,
                  //         'Vehicles',
                  //         selectedIndex == 0 ? true : false,
                  //       ),
                  //     ),
                  //     GestureDetector(
                  //       onTap: () {
                  //         setState(() {
                  //           selectedIndex = 1;
                  //         });
                  //       },
                  //       child: menuTabItem(
                  //         size,
                  //         'Towing Vehicles',
                  //         selectedIndex == 1 ? true : false,
                  //       ),
                  //     ),
                  //     GestureDetector(
                  //       onTap: () {
                  //         setState(() {
                  //           selectedIndex = 2;
                  //         });
                  //       },
                  //       child: menuTabItem(
                  //         size,
                  //         'Bike',
                  //         selectedIndex == 2 ? true : false,
                  //       ),
                  //     ),
                  //     GestureDetector(
                  //       onTap: () {
                  //         setState(() {
                  //           selectedIndex = 3;
                  //         });
                  //       },
                  //       child: menuTabItem(
                  //         size,
                  //         'Ambulance',
                  //         selectedIndex == 3 ? true : false,
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    color: kPlaceholderColor.withOpacity(0.35),
                    height: 0.5,
                    width: size.width,
                  ),
                ],
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
                child: CarDataWidget(
                  size: size,
                ),
              ),
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }

  SizedBox menuTabItem(Size size, String title, bool active) {
    return SizedBox(
      //width: boxWidth,
      child: Text(
        title,
        style: TextStyle(
          fontFamily: kDefaultFont,
          fontSize: size.height * 0.0150,
          fontWeight: FontWeight.normal,
          color: active ? kPrimaryColor : kPlaceholderColor,
        ),
      ),
    );
  }
}
