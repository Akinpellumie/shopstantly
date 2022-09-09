import 'package:flutter/material.dart';
import 'package:shopstantly_app/enums/vehicle_type.dart';
import 'package:shopstantly_app/views/logistics/widgets/driver_registration_view.dart';
import 'package:shopstantly_app/views/logistics/widgets/rider_registration_view.dart';

import '../../enums/logistic_plan_type.dart';
import '../../utils/app_button.dart';
import '../../utils/app_colors.dart';
import '../../utils/custom_router.dart';

class LogisticVerificationScreen extends StatefulWidget {
  const LogisticVerificationScreen({Key? key}) : super(key: key);

  @override
  State<LogisticVerificationScreen> createState() =>
      _LogisticVerificationScreenState();
}

class _LogisticVerificationScreenState
    extends State<LogisticVerificationScreen> {
  VehicleType vehicleType = VehicleType.car;

  LogisticPlanType logisticPlanType = LogisticPlanType.driver;
  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    logisticPlanType = arguments['LogisticPlanType'] as LogisticPlanType;
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
            'Registration',
            style: TextStyle(
              fontSize: size.height * 0.020,
              fontWeight: FontWeight.w500,
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: getDisplayView(),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: AppButton(
              text: "Continue",
              type: ButtonType.primary,
              onPressed: () {
                CustomRouter.nextScreen(context, "/face-verify");
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget getDisplayView() {
    if (logisticPlanType == LogisticPlanType.driver) {
      return const DriverRegistrationView();
    } else if (logisticPlanType == LogisticPlanType.rider) {
      return const RiderRegistrationView();
    } else {
      return const DriverRegistrationView();
    }
  }
}
