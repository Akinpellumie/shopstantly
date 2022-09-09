import 'package:flutter/material.dart';

import '../../../enums/vehicle_type.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/dimensions.dart';
import 'car_data_widget.dart';

class DriverRegistrationView extends StatefulWidget {
  const DriverRegistrationView({Key? key}) : super(key: key);

  @override
  State<DriverRegistrationView> createState() => _DriverRegistrationViewState();
}

class _DriverRegistrationViewState extends State<DriverRegistrationView> {
  int selectedIndex = 0;
  int regStage = 0;
  VehicleType vehicleType = VehicleType.car;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      controller: ScrollController(
        keepScrollOffset: true,
      ),
      slivers: [
        SliverAppBar(
          leadingWidth: 0.0,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          pinned: true,
          toolbarHeight: size.height * 0.10,
          backgroundColor: kBackgroundColor,
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: const EdgeInsets.all(0.0),
            centerTitle: false,
            title: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Start Your Verification Process ',
                      style: TextStyle(
                        fontSize: size.height * 0.020,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ),
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
                          vehicleType = VehicleType.bike;
                        });
                      },
                      child: Text(
                        'Bike',
                        style: TextStyle(
                          fontFamily: kDefaultFont,
                          fontSize: size.height * 0.020,
                          fontWeight: vehicleType == VehicleType.bike
                              ? FontWeight.bold
                              : FontWeight.w500,
                          color: vehicleType == VehicleType.bike
                              ? kPrimaryColor
                              : kPlaceholderColor,
                        ),
                      ),
                    ),
                  ],
                ),
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
              child: Column(
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  CarDataWidget(size: size, vehicleType: vehicleType),
                  const SizedBox(
                    height: 30.0,
                  ),
                  // AppButton(
                  //   text: btnText(),
                  //   type: ButtonType.primary,
                  //   onPressed: () {
                  //     setState(() {
                  //       regStage++;
                  //     });
                  //     //CustomRouter.nextScreen(context, "/logistic-verfiy");
                  //   },
                  // ),
                ],
              ),
            ),
            childCount: 1,
          ),
        ),
      ],
    );
  }
}
