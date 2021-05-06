import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hospital_finder_app/core/services/hospital_service.dart';
import 'package:hospital_finder_app/core/services/service_locator.dart';
import 'package:stacked/stacked.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeViewModel extends BaseViewModel {
  var _context;

  HospitalService hospitalService = locator<HospitalService>();

  String mapStyle =
      '[{"featureType":"landscape.man_made","elementType":"geometry","stylers":[{"color":"#f7f1e0"}]},{"featureType":"landscape.natural","elementType":"geometry","stylers":[{"color":"#d0e897"}]},{"featureType":"poi.park","elementType":"geometry","stylers":[{"color":"#bde6ae"}]},{"featureType":"road","elementType":"geometry.stroke","stylers":[{"color":"#ffffff"}]},{"featureType":"road.local","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#a3daf1"}]}]';

  GoogleMapController mapController;
  CustomInfoWindowController customInfoController =
      CustomInfoWindowController();

  LatLng pos = LatLng(45.521563, -122.677433);
  double latitude;
  double longitude;

  dynamic results;
  List<Marker> markers = [];

  Future future;

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
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    Position location = await Geolocator.getCurrentPosition();
    print(
        'Accuracy: ${location.accuracy} Lat: ${location.latitude} Long: ${location.longitude}');

    pos = LatLng(location.latitude, location.longitude);

    results =
        await hospitalService.getHospitalNearby(pos.latitude, pos.longitude);

    createMarkers(results);
  }

  void onMapCreated(GoogleMapController controller) async {
    mapController = controller;
    mapController.setMapStyle(mapStyle);
    CameraPosition currentPosition = CameraPosition(target: pos, zoom: 12.0);
    mapController
        .animateCamera(CameraUpdate.newCameraPosition(currentPosition));

    customInfoController.googleMapController = mapController;
  }

  void createMarkers(dynamic results) {
    for (var place in results) {
      // Filter only methodist for ease of data
      if (!place['name'].toString().toLowerCase().contains('methodist'))
        continue;

      var position = LatLng(
        place['geometry']['location']['lat'],
        place['geometry']['location']['lng'],
      );

      markers.add(
        Marker(
          markerId: MarkerId(place['place_id']),
          position: position,
          onTap: () {
            mapController.animateCamera(CameraUpdate.newCameraPosition(
                CameraPosition(
                    target:
                        LatLng(position.latitude + .005, position.longitude),
                    zoom: 15.0,
                    bearing: 0.0)));

            customInfoController.addInfoWindow(
                Column(
                  children: [
                    Container(
                      width: 250.w,
                      height: 250.h,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 16.h,
                          left: 16.w,
                          right: 16.w,
                          bottom: 16.h,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              place['name'],
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('General Checkup: \$60'),
                                  Text('Physical Examination: \$170'),
                                  Text('ER Visit: \$383'),
                                  Text('Arm Cast: \$339-\$392'),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                print('${place['name']} GO BOOPY');
                              },
                              child: Container(
                                height: 50.h,
                                child: Center(
                                  child: Text(
                                    'Details',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(16.w),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.w),
                      ),
                    ),
                    Triangle.isosceles(
                      edge: Edge.BOTTOM,
                      child: Container(
                        color: Colors.white,
                        width: 20.w,
                        height: 10.h,
                      ),
                    ),
                  ],
                ),
                position);
          },
        ),
      );
    }
  }
}

// void _handleResponse(data) {
//     var places = data['results'] as dynamic;
//     for (var place in places) {
//       print(place);
//       print(place['geometry']['location']['lat']);
//       print(place['geometry']['location']['lng']);
//       print(place['name']);

//       var pos = LatLng(place['geometry']['location']['lat'],
//           place['geometry']['location']['lng']);

//       markers.add(
//         Marker(
//           markerId: MarkerId(place['place_id']),
//           position: pos,
//           // infoWindow: InfoWindow(
//           //     title: place['name'],
//           //     snippet:
//           //         'Test test Test test Test \ntest Test test Test test Test'),
//           onTap: () {
//             print('${place['name']} go Boop!');
//             mapController.animateCamera(CameraUpdate.newCameraPosition(
//                 CameraPosition(target: pos, zoom: 15.0)));

//             customInfoController.addInfoWindow(
//                 Container(
//                   width: 100.h,
//                   height: 100.w,
//                   color: Colors.red,
//                 ),
//                 pos);
//           },
//         ),
//       );
//     }
//   }
