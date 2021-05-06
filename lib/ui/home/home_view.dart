import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hospital_finder_app/ui/home/home_view_model.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      onModelReady: (model) => model.init(context),
      builder: (context, model, child) => Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.only(
              top: 40.h,
              left: 20.w,
              right: 20.w,
              bottom: 20.h,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // color: Colors.red,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'San Antonio, ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF0B0C10),
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Texas',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF0B0C10),
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                            onPressed: () {
                              print('Search button boop');
                            },
                            icon: Icon(Icons.search)),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      // top: 24.h,
                      bottom: 20.w,
                    ),
                    child: FutureBuilder(
                        future: model.future,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return Container(
                              child: Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30.w),
                                  child: Stack(
                                    children: [
                                      GoogleMap(
                                        mapToolbarEnabled: false,
                                        myLocationEnabled: true,
                                        onMapCreated: model.onMapCreated,
                                        onCameraMove: (position) {
                                          model.customInfoController
                                              .onCameraMove();
                                        },
                                        onTap: (position) {
                                          model.customInfoController
                                              .hideInfoWindow();
                                        },
                                        initialCameraPosition: CameraPosition(
                                          target: model.pos,
                                          zoom: 11.0,
                                        ),
                                        markers: Set<Marker>.of(model.markers),
                                      ),
                                      CustomInfoWindow(
                                        controller: model.customInfoController,
                                        width: 250.w,
                                        height: 210.h,
                                        offset: 50,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          } else {
                            return Container(
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFFE5E5E5),
                                borderRadius: BorderRadius.circular(30.w),
                              ),
                            );
                          }
                        }),
                  ),
                ),
                Text(
                  'Filter',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          )),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
