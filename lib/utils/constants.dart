import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:location/location.dart';
import 'package:shopstantly_app/utils/app_colors.dart';
import 'package:shopstantly_app/utils/dimensions.dart';

const String googleApiKey = 'AIzaSyBfMESAzql2WTYs8DwilNnL4dSRyEN013g';

void displayToast(String msg, Color color) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_LONG,
    timeInSecForIosWeb: 4,
    backgroundColor: color,
    textColor: kWhiteColor,
    fontSize: kNormalText,
  );
}

Future<LocationData> getPermissionAndLocation() async {
  Location location = Location();

  bool _serviceEnabled;
  PermissionStatus _permissionGranted;
  LocationData _locationData;

  _serviceEnabled = await location.serviceEnabled();
  if (!_serviceEnabled) {
    _serviceEnabled = await location.requestService();
    if (!_serviceEnabled) {
    _permissionGranted = await location.requestPermission();
    }
  }

  _permissionGranted = await location.hasPermission();
  if (_permissionGranted == PermissionStatus.denied) {
    _permissionGranted = await location.requestPermission();
    
    if (_permissionGranted != PermissionStatus.granted) {
      //return;
    }
  }

  _locationData = await location.getLocation();
  return _locationData;
}
