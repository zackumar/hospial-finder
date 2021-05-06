import 'dart:convert';

import 'package:hospital_finder_app/core/services/hospital_service.dart';
import 'package:hospital_finder_app/core/services/hospitals/hospital_config.dart';

import 'package:http/http.dart' as http;

class HospitalServiceHybrid extends HospitalService {
  @override
  Future<dynamic> getHospitalNearby(double latitude, double longitude) async {
    String url =
        'https://maps.googleapis.com/maps/api/place/nearbysearch/json?key=$API_KEY&location=$latitude,$longitude&radius=100000&type=hospital';

    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return data['results'];
    } else {
      throw Exception('An error occured getting places nearby');
    }
  }

  Future<dynamic> getPrices(String name) async {
    return {
      "General Checkup": "Test",
    };
  }
}
