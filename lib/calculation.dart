import 'dart:math';

import 'package:flutter/cupertino.dart';

class BMICal {
  int height;
  int weight;
  double _bmi;

  BMICal({@required this.height, @required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    _bmi = weight / pow(height / 100, 2);
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDER WEIGHT';
    }
  }

  String getInterpretation() {
    _bmi = weight / pow(height / 100, 2);
    if (_bmi >= 25) {
      return 'You are Higher than Normal Body Weight. Try Doing Exercise.';
    } else if (_bmi >= 18.5) {
      return 'You have a Normal Body Weight. Good Job !!';
    } else {
      return 'You are Lower than Normal Body Weight. You can Eat More.';
    }
  }
}
