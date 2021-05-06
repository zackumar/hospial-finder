import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hospital_finder_app/ui/details/detail_arguments.dart';
import 'package:hospital_finder_app/ui/details/details_view.dart';
import 'package:hospital_finder_app/ui/home/home_view.dart';

const String HomeViewRoute = '/home';
const String DetailsViewRoute = '/details';

dynamic testDetails = {
  "business_status": "OPERATIONAL",
  "geometry": {
    "location": {"lat": 29.6162229, "lng": -98.4743864},
    "viewport": {
      "northeast": {"lat": 29.61809825, "lng": -98.4710803},
      "southwest": {"lat": 29.61335085000001, "lng": -98.4788167}
    }
  },
  "icon":
      "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/hospital-71.png",
  "name": "Methodist Hospital Stone Oak",
  "opening_hours": {"open_now": true},
  "photos": [
    {
      "height": 540,
      "html_attributions": [
        "<a href=\"https://maps.google.com/maps/contrib/107905941882752735152\">Methodist Hospital Stone Oak</a>"
      ],
      "photo_reference":
          "ATtYBwJ3H0bE7espomXjAuVCEkICnjOXz4D5r4b37QOv2mNLUA-CWRtSJMVQn7GdOu1T37oQZJzeiJpBIZ48jsupA93l_06HCo0eprD5MtAp9Crt6K1pRfh-PV5jvB1OmUKjUe4xRc3li0WkF41EOD2TR8EtAX4leBC2DIYISV8RQ8Y9O2i6",
      "width": 960
    }
  ],
  "place_id": "ChIJz4q-ivmJXIYRf4bSGQbQEWI",
  "plus_code": {
    "compound_code": "JG8G+F6 San Antonio, TX, USA",
    "global_code": "76X3JG8G+F6"
  },
  "rating": 4,
  "reference": "ChIJz4q-ivmJXIYRf4bSGQbQEWI",
  "scope": "GOOGLE",
  "types": ["hospital", "health", "point_of_interest", "establishment"],
  "user_ratings_total": 1166,
  "vicinity": "1139 East Sonterra Boulevard, San Antonio"
};

DetailArguments arguments = DetailArguments(testDetails);

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeViewRoute:
      return MaterialPageRoute(builder: (context) => HomeView());
    case DetailsViewRoute:
      return CupertinoPageRoute(
          builder: (context) => DetailsView(
                arguments: arguments,
              ));
    default:
      return MaterialPageRoute(builder: (context) => HomeView());
  }
}
