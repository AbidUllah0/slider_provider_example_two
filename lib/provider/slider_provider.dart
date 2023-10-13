import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SliderProvider with ChangeNotifier {
  double _sliderValue = 1.0;

  double get value => _sliderValue;

  void setValue(double onChangeValue) {
    _sliderValue = onChangeValue;
    notifyListeners();
  }
}
