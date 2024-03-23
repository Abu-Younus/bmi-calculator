import 'dart:math';

class BMI {
  int? _height;
  int? _weight;
  double? _bmiResult;

  BMI(int? height, int? weight) {
    _height = height;
    _weight = weight;

    _bmiResult = _weight! / pow(_height! / 100, 2);
  }

  double? get bmiResult => _bmiResult;

  String bodyCondition() {
    if(bmiResult! <= 18.5) {
      return 'Underweight';
    }
    else if (bmiResult! > 18.5 && bmiResult! < 25) {
      return 'Normal';
    }
    else {
      return 'Overwieght';
    }
  }

  String message() {
    if(bmiResult! <= 18.5) {
      return 'You have a lower than normal body weight, you can eat more!';
    }
    else if (bmiResult! > 18.5 && bmiResult! < 25) {
      return 'You have a normal body weight, great job!';
    }
    else {
      return 'You have a heigher than normal body weight, try to exercise!';
    }
  }
}

