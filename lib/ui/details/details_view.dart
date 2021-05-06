import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hospital_finder_app/ui/details/detail_arguments.dart';
import 'package:hospital_finder_app/ui/details/details_view_model.dart';
import 'package:stacked/stacked.dart';

class DetailsView extends StatelessWidget {
  final DetailArguments arguments;

  const DetailsView({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      onModelReady: (model) => model.init(context, arguments.details),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(
            top: 40.h,
            left: 40.w,
            right: 40.w,
            bottom: 40.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 8.h,
              ),
              InkWell(
                onTap: () => model.back(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.keyboard_backspace),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'Back',
                      style: TextStyle(
                        color: Color(0xFF0B0C10),
                        fontFamily: 'Montserrat',
                        fontSize: 18.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 48.h,
              ),
              Expanded(
                child: Container(
                  child: FutureBuilder(
                    future: model.future,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                model.name,
                                style: TextStyle(
                                  color: Color(0xFF0B0C10),
                                  fontFamily: 'Montserrat',
                                  fontSize: 36.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_rate,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    '${model.rating} out of 5 stars with ${model.ratingTotal} ratings',
                                    style: TextStyle(
                                      color: Color(0xFF0B0C10),
                                      fontFamily: 'Montserrat',
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 32.h,
                              ),
                              Text(
                                'Address',
                                style: TextStyle(
                                  color: Color(0xFF0B0C10),
                                  fontFamily: 'Montserrat',
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                model.address,
                                style: TextStyle(
                                  color: Color(0xFF0B0C10),
                                  fontFamily: 'Montserrat',
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                // textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              Container(
                                height: 160.h,
                                child: Center(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16.w),
                                    child: GoogleMap(
                                      mapToolbarEnabled: false,
                                      myLocationEnabled: false,
                                      rotateGesturesEnabled: false,
                                      tiltGesturesEnabled: false,
                                      zoomControlsEnabled: false,
                                      zoomGesturesEnabled: false,
                                      scrollGesturesEnabled: false,
                                      compassEnabled: false,
                                      onTap: (position) => model.mapTap(),
                                      onMapCreated: model.onMapCreated,
                                      initialCameraPosition: CameraPosition(
                                        target: model.pos,
                                        zoom: 11.0,
                                      ),
                                      markers: Set<Marker>.of(model.markers),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 32.h,
                              ),
                              Text(
                                'Prices*',
                                style: TextStyle(
                                  color: Color(0xFF0B0C10),
                                  fontFamily: 'Montserrat',
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              _prices(model.prices),
                            ],
                          ),
                        );
                      } else {
                        return Column(
                          children: [
                            SizedBox(
                              height: 120.h,
                            ),
                            Center(
                              child: CircularProgressIndicator(),
                            ),
                          ],
                        );
                      }
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: model.buttonTap,
                  child: Container(
                    width: 334.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                      color: Colors.red, //Color(0xFF0B0C10),
                      borderRadius: BorderRadius.circular(16.0.w),
                    ),
                    child: Center(
                      child: Text(
                        'Visit Website',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Montserrat',
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => DetailsViewModel(),
    );
  }

  Widget _prices(Map<String, String> prices) {
    List<Widget> priceList = [];

    prices.forEach((key, value) {
      priceList.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              key,
              style: TextStyle(
                color: Color(0xFF0B0C10),
                fontFamily: 'Montserrat',
                fontSize: 18.sp,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                color: Color(0xFF0B0C10),
                fontFamily: 'Montserrat',
                fontSize: 18.sp,
              ),
            ),
          ],
        ),
      );
    });

    priceList.add(SizedBox(
      height: 16.h,
    ));

    priceList.add(Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Text(
            '*Prices shown are base prices without insurance/discounts. Also mock data :D',
            style: TextStyle(
              color: Color(0xFF0B0C10),
              fontFamily: 'Montserrat',
              fontSize: 18.sp,
            ),
            softWrap: true,
          ),
        ),
      ],
    ));

    return Column(
      children: priceList,
    );
  }
}
