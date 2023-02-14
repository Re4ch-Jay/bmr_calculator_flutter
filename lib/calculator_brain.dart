import 'package:flutter/material.dart';
import 'constants.dart';

class CalculatorBrain {
  final int age, weight, height;
  final bool gender;

  late double _bmr;

  CalculatorBrain({
    required this.age,
    required this.weight,
    required this.height,
    required this.gender,
  });

  double _calculateBMRMale() {
    return (10 * weight.toDouble()) +
        (6.25 * height.toDouble()) -
        (5 * age) +
        5;
  }

  double _calculateBMRFemale() {
    return (10 * weight.toDouble()) +
        (6.25 * height.toDouble()) -
        (5 * age) -
        161;
  }

  String _getMaleBMR() {
    _bmr = _calculateBMRMale();
    return _bmr.toString();
  }

  String _getFemaleBMR() {
    _bmr = _calculateBMRFemale();
    return _bmr.toString();
  }

  bool _isMale() {
    return gender == MALE;
  }

  bool _isFemale() {
    return gender == FEMALE;
  }

  void _checkGenderToCalculate() {
    if (_isMale()) {
      _calculateBMRMale();
    } else if (_isFemale()) {
      _calculateBMRFemale();
    }
  }

  IconData getGenderIcon() {
    if (_isMale()) {
      return Icons.male;
    } else {
      return Icons.female;
    }
  }

  String result() {
    _checkGenderToCalculate();
    if (_isMale()) {
      return _getMaleBMR();
    } else if (_isFemale()) {
      return _getFemaleBMR();
    } else {
      return '';
    }
  }
}
