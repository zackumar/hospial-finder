import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hospital_finder_app/core/services/hospital_service.dart';
import 'package:hospital_finder_app/core/services/service_locator.dart';
import 'package:hospital_finder_app/ui/map_style.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsViewModel extends BaseViewModel {
  var _context;

  HospitalService hospitalService = locator<HospitalService>();

  Future future;

  dynamic details;
  String placeId;
  String name;
  String address;
  LatLng pos;

  String rating;
  String ratingTotal;

  String url = 'https://www.methodisthealthsystem.org/';

  Map<String, String> prices;

  List<Marker> markers = [];

  GoogleMapController mapController;

  void init(context, details) {
    _context = context;

    this.details = details;
    placeId = details['place_id'];
    name = details['name'];
    address = details['vicinity'];

    print(address);
    pos = LatLng(details['geometry']['location']['lat'],
        details['geometry']['location']['lng']);

    rating = details['rating'].toString();
    ratingTotal = details['user_ratings_total'].toString();

    future = setup();
  }

  Future<void> setup() async {
    markers.add(Marker(
      markerId: MarkerId(placeId),
      position: pos,
    ));

    prices = await hospitalService.getPrices(name) as Map<String, String>;
    prices.forEach((key, value) => {print('$key: $value')});
    return;
  }

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
    mapController.setMapStyle(mapStyle);
    CameraPosition currentPosition = CameraPosition(target: pos, zoom: 12.0);
    mapController
        .animateCamera(CameraUpdate.newCameraPosition(currentPosition));
  }

  void mapTap() {
    print('Opening in maps: ${pos.latitude},${pos.longitude}');
    // MapsLauncher.launchCoordinates(pos.latitude, pos.longitude);
    MapsLauncher.launchQuery(name);
  }

  Future<void> buttonTap() async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      Fluttertoast.showToast(msg: 'Could not launch url: $url');
    }
  }

  void back() {
    Navigator.pop(_context);
  }
}
