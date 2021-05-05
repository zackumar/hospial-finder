import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hospital_finder_app/core/services/hospital_service.dart';
import 'package:hospital_finder_app/core/services/service_locator.dart';
import 'package:stacked/stacked.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeViewModel extends BaseViewModel {
  var _context;

  String mapStyle =
      '[{"featureType":"landscape.man_made","elementType":"geometry","stylers":[{"color":"#f7f1e0"}]},{"featureType":"landscape.natural","elementType":"geometry","stylers":[{"color":"#d0e897"}]},{"featureType":"poi.park","elementType":"geometry","stylers":[{"color":"#bde6ae"}]},{"featureType":"road","elementType":"geometry.stroke","stylers":[{"color":"#ffffff"}]},{"featureType":"road.local","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#a3daf1"}]}]';

  GoogleMapController mapController;

  LatLng pos = LatLng(45.521563, -122.677433);
  double latitude;
  double longitude;

  List<Marker> markers = [];

  Future future;

  HospitalService _hospitalService = locator<HospitalService>();

  void init(context) {
    _context = context;
    future = setup();
  }

  Future<void> setup() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services disabled');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permission denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    Position location = await Geolocator.getCurrentPosition();
    print(
        'Accuracy: ${location.accuracy} Lat: ${location.latitude} Long: ${location.longitude}');

    pos = LatLng(location.latitude, location.longitude);

    markers =
        await _hospitalService.getHospitalNearby(pos.latitude, pos.longitude);
  }

  void onMapCreated(GoogleMapController controller) async {
    mapController = controller;
    mapController.setMapStyle(mapStyle);
    print('Pos');
    print(pos);
    CameraPosition currentPosition = CameraPosition(target: pos, zoom: 12.0);
    mapController
        .animateCamera(CameraUpdate.newCameraPosition(currentPosition));
  }
}
