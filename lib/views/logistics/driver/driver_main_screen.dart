import 'dart:async';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:shopstantly_app/utils/app_button.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/assets_path.dart';
import 'package:shopstantly_app/views/logistics/driver/widgets/google_map_view.dart';

import '../../../enums/logistic_type.dart';
import '../../../enums/package_type.dart';
import '../../../enums/trip_type.dart';
import '../../../utils/constants.dart';
import '../../../utils/dimensions.dart';

class DriverMainScreen extends StatefulWidget {
  const DriverMainScreen({Key? key}) : super(key: key);

  @override
  State<DriverMainScreen> createState() => _DriverMainScreenState();
}

class _DriverMainScreenState extends State<DriverMainScreen> {
  LogisticType? logisticType = LogisticType.intra;
  PackageType? packageType = PackageType.passenger;
  TripType? tripType = TripType.one;
  int currentIndex = 0;
  bool _switchValue = true;
  LocationData? currentLocation;
  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng sourceLocation = LatLng(37.32500926, -122.03272188);
  static const LatLng destination = LatLng(37.33429383, -122.06600055);
  List<LatLng> polylineCoordinates = [];

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      googleApiKey,
      PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
      PointLatLng(destination.latitude, destination.longitude),
    );
    if (result.points.isNotEmpty) {
      for (var point in result.points) {
        polylineCoordinates.add(
          LatLng(point.latitude, point.longitude),
        );
      }
      setState(() {});
    }
  }

  void getCurrentLocation() async {
    Location location = Location();
    GoogleMapController googleMapController = await _controller.future;
    location.getLocation().then((value) => currentLocation = value);
    location.onLocationChanged.listen((newLoc) {
      currentLocation = newLoc;
      googleMapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            zoom: 13.5,
            target: LatLng(newLoc.latitude!, newLoc.longitude!),
          ),
        ),
      );
      setState(() {});
    });
  }

  @override
  void initState() {
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: currentLocation == null
          ? Stack(
              alignment: Alignment.center,
              fit: StackFit.passthrough,
              children: <Widget>[
                Image.asset(
                  AssetsPath.map,
                  fit: BoxFit.cover,
                  height: size.height,
                  width: size.width,
                ),
                Positioned(
                  top: size.height * 0.10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    margin: const EdgeInsets.only(bottom: 15.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Online',
                                style: TextStyle(
                                  fontFamily: kDefaultFont,
                                  fontSize: size.height * 0.020,
                                  fontWeight: FontWeight.w500,
                                  color: kPrimaryColor,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              CupertinoSwitch(
                                value: _switchValue,
                                thumbColor: kPrimaryColor,
                                trackColor: kPlaceholderColor,
                                activeColor: kPlaceholderColor,
                                onChanged: (value) {
                                  setState(() {
                                    _switchValue = value;
                                  });
                                },
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        color:
                                            logisticType == LogisticType.intra
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
                                        color:
                                            logisticType == LogisticType.intra
                                                ? kPrimaryColor
                                                : Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: size.width / 5.5,
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
                                        color:
                                            logisticType == LogisticType.inter
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
                                        color:
                                            logisticType == LogisticType.inter
                                                ? kPrimaryColor
                                                : Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30.0,
                  child: SizedBox(
                    height: size.height * 0.50,
                    width: size.width,
                    child: Swiper(
                      scrollDirection: Axis.horizontal,
                      viewportFraction: 0.8,
                      loop: true,
                      itemHeight: size.height * 0.45,
                      layout: SwiperLayout.STACK,
                      itemWidth: size.width - 60,
                      itemBuilder: (context, index) {
                        //final image = _imageUrls[index];
                        return Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 10.0,
                          ),
                          color: kWhiteColor,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://randomuser.me/api/portraits/men/5.jpg"),
                                    maxRadius: 30,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jacob Jones',
                                        style: TextStyle(
                                          fontFamily: kDefaultFont,
                                          fontSize: size.height * 0.020,
                                          fontWeight: FontWeight.w500,
                                          color: kPrimaryColor,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'N 2,500',
                                            style: TextStyle(
                                              fontFamily: kDefaultFont,
                                              fontSize: size.height * 0.018,
                                              fontWeight: FontWeight.normal,
                                              color: kPrimaryColor,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 20.0,
                                          ),
                                          Text(
                                            '4.5km',
                                            style: TextStyle(
                                              fontFamily: kDefaultFont,
                                              fontSize: size.height * 0.018,
                                              fontWeight: FontWeight.normal,
                                              color: kPrimaryColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 10.0),
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
                                            padding: const EdgeInsets.only(
                                                left: 7.0),
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
                                            color:
                                                kPrimaryColor.withOpacity(0.35),
                                            height: 0.5,
                                            width: size.width / 1.5 - 20,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: kOrangeColor,
                                            size: size.height * 0.025,
                                          ),
                                          const SizedBox(
                                            width: 10.0,
                                          ),
                                          SizedBox(
                                            width: size.width / 1.5 - 20,
                                            height: 30.0,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border:
                                                    const UnderlineInputBorder(
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
                                                  fontSize:
                                                      size.height * 0.0160,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                                labelStyle: TextStyle(
                                                  color: kPlaceholderColor,
                                                  fontFamily: kDefaultFont,
                                                  fontSize:
                                                      size.height * 0.0160,
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
                              SizedBox(
                                height: 40.0,
                                width: size.width,
                                child: Row(
                                  children: [
                                    AppButton(
                                      btnHeight: 40.0,
                                      btnWidth: size.width / 2 - 50,
                                      type: ButtonType.plain,
                                      onPressed: () {},
                                      text: 'Decline',
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    AppButton(
                                      btnHeight: 40.0,
                                      btnWidth: size.width / 2 - 50,
                                      type: ButtonType.primary,
                                      onPressed: () {},
                                      text: 'Accept',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      indicatorLayout: PageIndicatorLayout.SCALE,
                      autoplay: false,
                      itemCount: 5,
                      onIndexChanged: (value) {
                        setState(() {
                          currentIndex = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            )
          : GoogleMapView(
              currentLocation: currentLocation,
              polylineCoordinates: polylineCoordinates,
              sourceLocation: sourceLocation,
              destination: destination,
              controller: _controller,
            ),
    );
  }
}
