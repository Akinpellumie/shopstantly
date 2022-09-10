import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';


class GoogleMapView extends StatelessWidget {
  const GoogleMapView({
    Key? key,
    required this.currentLocation,
    required this.polylineCoordinates,
    required this.sourceLocation,
    required this.destination,
    required Completer<GoogleMapController> controller,
  }) : _controller = controller, super(key: key);

  final LocationData? currentLocation;
  final List<LatLng> polylineCoordinates;
  final LatLng sourceLocation;
  final LatLng destination;
  final Completer<GoogleMapController> _controller;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(
              currentLocation!.latitude!, currentLocation!.longitude!),
          zoom: 14.5,
        ),
        polylines: {
          Polyline(
            polylineId: const PolylineId("route"),
            points: polylineCoordinates,
          ),
        },
        markers: {
          Marker(
            markerId: const MarkerId("currentLocation"),
            position: LatLng(
                currentLocation!.latitude!, currentLocation!.longitude!),
          ),
          Marker(
            markerId: const MarkerId("source"),
            position: sourceLocation,
          ),
          Marker(
            markerId: const MarkerId("destination"),
            position: destination,
          ),
        },
        onMapCreated: (mapController) {
          _controller.complete(mapController);
        },
      );
  }
}
