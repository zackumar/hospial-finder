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
              bottom: 40.h,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    child: Container(
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.w),
                          child: GoogleMap(
                            onMapCreated: model.onMapCreated,
                            initialCameraPosition: CameraPosition(
                                target: model.center, zoom: 11.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
