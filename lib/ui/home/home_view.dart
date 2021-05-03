import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        body: Text(model.text),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
