import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class HospitalService {
  List<Marker> markers = [];
  // List<Marker> getHospitalMarkers(double latitude, double longitude);
  Future<List<Marker>> getHospitalNearby(double latitude, double longitude);
}
