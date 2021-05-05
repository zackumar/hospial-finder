import 'dart:convert';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter_platform_interface/src/types/marker.dart';
import 'package:hospital_finder_app/core/services/hospital_service.dart';
import 'package:hospital_finder_app/core/services/hospitals/hospital_config.dart';

import 'package:http/http.dart' as http;

class HospitalServiceHybrid extends HospitalService {
  List<Marker> markers = [];

  @override
  Future<List<Marker>> getHospitalNearby(
      double latitude, double longitude) async {
    markers.clear();

    String url =
        'https://maps.googleapis.com/maps/api/place/nearbysearch/json?key=$API_KEY&location=$latitude,$longitude&radius=100000&type=hospital';

    print(url);

    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      _handleResponse(data);
    } else {
      throw Exception('An error occured getting places nearby');
    }

    return markers;
  }

  void _handleResponse(data) {
    var places = data['results'] as dynamic;
    for (var place in places) {
      print(place);
      print(place['geometry']['location']['lat']);
      print(place['geometry']['location']['lng']);
      print(place['name']);
      markers.add(Marker(
          markerId: MarkerId(place['place_id']),
          position: LatLng(place['geometry']['location']['lat'],
              place['geometry']['location']['lng']),
          infoWindow:
              InfoWindow(title: place['name'], snippet: 'Test\nTest\nTest'),
          onTap: () {
            print('${place['name']} go Boop!');
          }));
    }
  }
}
