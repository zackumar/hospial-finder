import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeViewModel extends BaseViewModel {
  var _context;

  String mapStyle =
      '[{"featureType":"landscape.man_made","elementType":"geometry","stylers":[{"color":"#f7f1e0"}]},{"featureType":"landscape.natural","elementType":"geometry","stylers":[{"color":"#d0e897"}]},{"featureType":"poi.park","elementType":"geometry","stylers":[{"color":"#bde6ae"}]},{"featureType":"road","elementType":"geometry.stroke","stylers":[{"color":"#ffffff"}]},{"featureType":"road.local","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#a3daf1"}]}]';

  GoogleMapController mapController;

  final LatLng center = const LatLng(45.521563, -122.677433);

  void init(context) {
    _context = context;
  }

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
    mapController.setMapStyle(mapStyle);
  }
}
