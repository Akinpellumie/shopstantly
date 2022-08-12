import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/assets_path.dart';

import '../../enums/logistic_plan_type.dart';
import '../../utils/app_button.dart';
import '../../utils/custom_router.dart';

class GettingStarted extends StatefulWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  State<GettingStarted> createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  LogisticPlanType? logisticPlanType = LogisticPlanType.rider;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Logistics',
                  style: TextStyle(
                    fontSize: size.height * 0.0170,
                    fontWeight: FontWeight.w500,
                    color: kPrimaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        logisticPlanType = LogisticPlanType.rider;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 10.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.5,
                          color: logisticPlanType == LogisticPlanType.rider
                              ? kPrimaryColor
                              : kPlaceholderColor,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AssetsPath.ride,
                            width: size.height * 0.10,
                            height: size.height * 0.05,
                            color: logisticPlanType == LogisticPlanType.rider
                                ? kPrimaryColor
                                : kPlaceholderColor,
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Take a Ride',
                            style: TextStyle(
                              color: logisticPlanType == LogisticPlanType.rider
                                  ? kPrimaryColor
                                  : kPlaceholderColor,
                              fontSize: size.height * 0.0150,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        logisticPlanType = LogisticPlanType.driver;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                        vertical: 10.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.5,
                          color: logisticPlanType == LogisticPlanType.driver
                              ? kPrimaryColor
                              : kPlaceholderColor,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AssetsPath.wheel,
                            width: size.height * 0.10,
                            height: size.height * 0.05,
                            color: logisticPlanType == LogisticPlanType.driver
                                ? kPrimaryColor
                                : kPlaceholderColor,
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Be A Driver',
                            style: TextStyle(
                              color: logisticPlanType == LogisticPlanType.driver
                                  ? kPrimaryColor
                                  : kPlaceholderColor,
                              fontSize: size.height * 0.0150,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hi Blackkie,',
                        style: TextStyle(
                          fontSize: size.height * 0.0300,
                          fontWeight: FontWeight.w500,
                          color: kPrimaryColor,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        'Please kindly apply for verification to have access to this service.\nAs much as we promise you verified drivers. We have also promised drivers, verified riders. For a safe and secure service for everyone.',
                        style: TextStyle(
                          fontSize: size.height * 0.0140,
                          fontWeight: FontWeight.w300,
                          color: kPlaceholderColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AppButton(
                text: "Apply For Verification",
                type: ButtonType.primary,
                onPressed: () {
                  CustomRouter.nextScreen(context, "/logistic-verfiy");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
