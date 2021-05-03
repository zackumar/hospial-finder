import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hospital_finder_app/ui/home/home_view.dart';

const String HomeViewRoute = '/home';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeViewRoute:
      return MaterialPageRoute(builder: (context) => HomeView());
    default:
      return MaterialPageRoute(builder: (context) => HomeView());
  }
}
