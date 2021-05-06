import 'package:custom_info_window/custom_info_window.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hospital_finder_app/ui/home/home_view_model.dart';

abstract class HospitalService {
  List<Marker> markers = [];
  GoogleMapController mapController;
  CustomInfoWindowController customInfoController;

  // Future<List<Marker>> getHospitalNearby(double latitude, double longitude);
  Future<dynamic> getHospitalNearby(double latitude, double longitude);
}
