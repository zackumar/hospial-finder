import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_finder_app/core/services/service_locator.dart';
import 'package:hospital_finder_app/router.dart' as router;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  setupServiceLocator();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414.0, 896.0),
      builder: () => MaterialApp(
        title: 'Hospital Search',
        theme: ThemeData(
          primaryColor: Color(0xFF0B0C10),
          accentColor: Color(0xFF0B0C10),
        ),
        onGenerateRoute: router.generateRoute,
        initialRoute: router.HomeViewRoute,
      ),
    );
  }
}
