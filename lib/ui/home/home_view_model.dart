import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  String _text = 'Hello World';
  String get text => _text;

  void init(context) {}
}
