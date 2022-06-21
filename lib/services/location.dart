import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';

// Future<Position> position =
// Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

class GetLocation {
  double lat, long;
  void getLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      try {
        permission = await Geolocator.requestPermission();
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.low);
        lat = position.longitude;
        long = position.longitude;
        print(position);
      } catch (e) {
        print('couldn\'t request permissions');
      }
      ;
    } else {
      try {
        Future<Position> position = Geolocator.getCurrentPosition();
      } catch (e) {
        print("couldn\'t get the position");
      }
    }
    ;
  }
}
