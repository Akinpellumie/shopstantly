import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/assets_path.dart';

import '../../enums/logistic_plan_type.dart';
import '../../utils/app_button.dart';
import '../../utils/custom_router.dart';
import '../../widgets/dot_indicator.dart';

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Hi Blackkie,',
                  style: TextStyle(
                    fontSize: size.height * 0.0250,
                    fontWeight: FontWeight.w500,
                    color: kPrimaryColor,
                  ),
                ),
              ),
              Container(
                height: size.height * 0.20,
                margin: const EdgeInsets.only(
                  top: 20.0,
                ),
                child: PageView.builder(
                  itemCount: 2,
                  pageSnapping: true,
                  onPageChanged: (index) {
                    setState(() {
                      //_carouselCurrentIndex = index;
                    });
                  },
                  itemBuilder: (context, pagePosition) {
                    return Container(
                      margin: const EdgeInsets.only(right: 5.0),
                      //width: size.width - 50,
                      decoration: BoxDecoration(
                        color: kOrangeColor,
                        gradient: const LinearGradient(colors: [
                          kPrimaryOrangeColor,
                          kSecondaryOrangeColor
                        ]),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            AssetsPath.food,
                            width: size.width / 2 - 30,
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 10.0),
                            width: size.width / 2 - 30,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Special for you',
                                  style: TextStyle(
                                    color: kWhiteColor,
                                    fontSize: size.height * 0.0125,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  'Fried noodles with special chicken katsu',
                                  style: TextStyle(
                                    color: kWhiteColor,
                                    fontSize: size.height * 0.0190,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                    vertical: 5.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Text(
                                    'Buy Now',
                                    style: TextStyle(
                                      color: kWhiteColor,
                                      fontSize: size.height * 0.0125,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    2,
                    (index) => DotIndicator(
                      index: index,
                    ),
                  ),
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
                  color: kPrimaryColor.withOpacity(0.70),
                ),
              ),
              const SizedBox(
                height: 40.0,
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
              const SizedBox(
                height: 30.0,
              ),
              AppButton(
                text: "Apply To Start A Ride",
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
