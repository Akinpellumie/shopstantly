import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/assets_path.dart';
import 'package:shopstantly_app/widgets/custom_three_tab.dart';

import '../../enums/logistic_plan_type.dart';
import '../../utils/app_button.dart';
import '../../utils/custom_router.dart';

class GettingStarted extends StatefulWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  State<GettingStarted> createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  LogisticPlanType? logisticPlanType = LogisticPlanType.driver;
  int carouselIndex = 0;
  int carouselLength = 3;
  int tabIndex = 0;
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
                  'Hi Dotun,',
                  style: TextStyle(
                    fontSize: size.height * 0.0250,
                    fontWeight: FontWeight.w500,
                    color: kPrimaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomThreeTab(
                size: size,
                firstTabText: 'Drive',
                secondTabText: 'Book Ride',
                thirdTabText: 'Waybill',
                callback: (val) => setState(
                  () {
                    tabIndex = val;
                    switch (val) {
                      case 0:
                        logisticPlanType = LogisticPlanType.driver;
                        break;
                      case 1:
                        logisticPlanType = LogisticPlanType.rider;
                        break;
                      case 2:
                        logisticPlanType = LogisticPlanType.waybill;
                        break;
                      default:
                    }
                    // updateViewOnTabChange(
                    //     widget.customerViewModel, val, widget.caller);
                  },
                ),
              ),
              Container(
                height: size.height * 0.20,
                margin: const EdgeInsets.only(
                  top: 20.0,
                ),
                child: PageView.builder(
                  itemCount: carouselLength,
                  pageSnapping: true,
                  onPageChanged: (index) {
                    setState(() {
                      carouselIndex = index;
                    });
                  },
                  itemBuilder: (context, pagePosition) {
                    return Container(
                      margin: const EdgeInsets.only(
                        right: 5.0,
                      ),
                      //width: size.width - 50,
                      decoration: BoxDecoration(
                        color: kOrangeColor,
                        gradient: const LinearGradient(
                            colors: [kPrimaryLinkColor, kSecondaryOrangeColor]),
                        borderRadius: BorderRadius.circular(10.0),
                        // boxShadow: [
                        //   BoxShadow(
                        //       color: Colors.black26.withOpacity(0.75),
                        //       offset: Offset.fromDirection(90.0),
                        //       blurRadius: 10.0)
                        // ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(left: 20.0),
                            width: size.width * 0.60 - 30,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  getSliderTitleText(),
                                  style: TextStyle(
                                    color: kWhiteColor,
                                    fontSize: size.height * 0.020,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  getSliderDescText(),
                                  style: TextStyle(
                                    color: kWhiteColor,
                                    fontSize: size.height * 0.0160,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.40 - 20,
                            child: Stack(
                              clipBehavior: Clip.hardEdge,
                              children: [
                                Positioned(
                                  bottom: -30.0,
                                  right: -30.0,
                                  child: Image.asset(
                                    tabIndex == 0
                                        ? AssetsPath.cash
                                        : AssetsPath.car,
                                    height: 150,
                                    fit: BoxFit.cover,
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
                    carouselLength,
                    (index) => buildDot(index, context),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              RatingBar(
                initialRating: 0,
                maxRating: 5,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: size.height * 0.030,
                ratingWidget: RatingWidget(
                  full: SvgPicture.asset(
                    AssetsPath.starFillIcon,
                    color: kOrangeColor,
                  ),
                  half: SvgPicture.asset(
                    AssetsPath.starHalfIcon,
                    color: kOrangeColor,
                  ),
                  empty: SvgPicture.asset(
                    AssetsPath.starOutlineIcon,
                    color: kPrimaryColor,
                  ),
                ),
                onRatingUpdate: (value) {
                  setState(() {
                    //_ratingValue = value;
                  });
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                getPageText(),
                style: TextStyle(
                  fontSize: size.height * 0.018,
                  fontWeight: FontWeight.w400,
                  color: kPrimaryColor.withOpacity(0.70),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     GestureDetector(
              //       onTap: () {
              //         setState(() {
              //           logisticPlanType = LogisticPlanType.rider;
              //         });
              //       },
              //       child: Container(
              //         padding: const EdgeInsets.symmetric(
              //           horizontal: 10.0,
              //           vertical: 10.0,
              //         ),
              //         decoration: BoxDecoration(
              //           border: Border.all(
              //             width: 0.5,
              //             color: logisticPlanType == LogisticPlanType.rider
              //                 ? kPrimaryColor
              //                 : kPlaceholderColor,
              //           ),
              //           borderRadius: BorderRadius.circular(20.0),
              //         ),
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             SvgPicture.asset(
              //               AssetsPath.ride,
              //               width: size.height * 0.10,
              //               height: size.height * 0.05,
              //               color: logisticPlanType == LogisticPlanType.rider
              //                   ? kPrimaryColor
              //                   : kPlaceholderColor,
              //             ),
              //             const SizedBox(
              //               height: 5.0,
              //             ),
              //             Text(
              //               'Take a Ride',
              //               style: TextStyle(
              //                 color: logisticPlanType == LogisticPlanType.rider
              //                     ? kPrimaryColor
              //                     : kPlaceholderColor,
              //                 fontSize: size.height * 0.0150,
              //                 fontWeight: FontWeight.w600,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 10.0,
              //     ),
              //     GestureDetector(
              //       onTap: () {
              //         setState(() {
              //           logisticPlanType = LogisticPlanType.driver;
              //         });
              //       },
              //       child: Container(
              //         padding: const EdgeInsets.symmetric(
              //           horizontal: 15.0,
              //           vertical: 10.0,
              //         ),
              //         decoration: BoxDecoration(
              //           border: Border.all(
              //             width: 0.5,
              //             color: logisticPlanType == LogisticPlanType.driver
              //                 ? kPrimaryColor
              //                 : kPlaceholderColor,
              //           ),
              //           borderRadius: BorderRadius.circular(20.0),
              //         ),
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             SvgPicture.asset(
              //               AssetsPath.wheel,
              //               width: size.height * 0.10,
              //               height: size.height * 0.05,
              //               color: logisticPlanType == LogisticPlanType.driver
              //                   ? kPrimaryColor
              //                   : kPlaceholderColor,
              //             ),
              //             const SizedBox(
              //               height: 5.0,
              //             ),
              //             Text(
              //               'Be A Driver',
              //               style: TextStyle(
              //                 color: logisticPlanType == LogisticPlanType.driver
              //                     ? kPrimaryColor
              //                     : kPlaceholderColor,
              //                 fontSize: size.height * 0.0150,
              //                 fontWeight: FontWeight.w600,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: 30.0,
              // ),
              AppButton(
                text: getBtnText(),
                type: ButtonType.primary,
                onPressed: () {
                  CustomRouter.nextScreen(context, "/logistic-verify",
                      args: {'LogisticPlanType': logisticPlanType});
                  //CustomRouter.nextScreen(context, '/driver-screen');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void btnClickEvent(BuildContext context) {
    if (tabIndex == 0) {
      CustomRouter.nextScreen(context, "/logistic-verify",
          args: {'LogisticPlanType': logisticPlanType});
    } else if (tabIndex == 1) {
      CustomRouter.nextScreen(context, "/logistic-verify",
          args: {'LogisticPlanType': logisticPlanType});
    } else if (tabIndex == 2) {
      CustomRouter.nextScreen(context, "/logistic-verify",
          args: {'LogisticPlanType': logisticPlanType});
    } else {}
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: carouselIndex == index
            ? Theme.of(context).primaryColor
            : kPrimaryAccentColor,
      ),
    );
  }

  String getBtnText() {
    switch (tabIndex) {
      case 0:
        return 'Apply To Be a Driver';
      case 1:
        return 'Upload ID';
      case 2:
        return 'Search for Courier';
      default:
        return 'Apply To Be a Driver';
    }
  }

  String getSliderTitleText() {
    switch (tabIndex) {
      case 0:
        return 'Ba a Driver';
      case 1:
        return 'Take a Ride';
      case 2:
        return 'Send Package';
      default:
        return 'Ba a Driver';
    }
  }

  String getSliderDescText() {
    switch (tabIndex) {
      case 0:
        return 'Earn extra cash as a driver when you register on  Shopstantly and enjoy secure service.';
      case 1:
        return 'Order a ride and be assured of your security with verified drivers and affordable charges.';
      case 2:
        return 'Get your package delivered to anywhere as soon as possible.';
      default:
        return 'Earn extra cash as a driver when you register on  Shopstantly and enjoy secure service.';
    }
  }

  String getPageText() {
    switch (tabIndex) {
      case 0:
        return 'You are yet to be verified as a driver. It takes less than 2 minute to do the first step.';
      case 1:
        return 'You are one step away from booking a ride. \nPlease Identify yourself. \nWe request this to ensure security.';
      case 2:
        return 'Thank you for Choosing to send your parcels  with Shopstantly. \nYou can send your parcels and gift items  at affordable rates with our Intercity and Intrastate delivery services.';
      default:
        return 'You are yet to be verified as a driver. It takes less than 2 minute to do the first step.';
    }
  }
}
