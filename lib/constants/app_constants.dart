import 'package:flutter/material.dart';

double kSmallFontSize = 16.0;
double kMediumFontSize = 20.0;
double kLargeFontSize = 50.0;
double kSmallPaMa = 4.0;
double kMediumPaMa = 8.0;
double kLargePaMa = 16.0;
double kXLargePaMa = 24.0;
Color kActiveColor = Colors.blue;
Color kInactiveColor = Colors.red;
Color kWhiteColor = Colors.white;
Color kGreyColor = Colors.grey;
String kMale = 'MALE';
String kFemale = 'FEMALE';
String kHeight = 'HEIGHT';
String kCM = 'cm';
String kWeight = 'WEIGHT';
String kAge = 'AGE';

TextStyle kSmallTextStyle = TextStyle(
    color: kWhiteColor,
    fontSize: kSmallFontSize,
    fontWeight: FontWeight.bold
);

TextStyle kMediumTextStyle = TextStyle(
  color: kWhiteColor,
  fontSize: kMediumFontSize,
  fontWeight: FontWeight.bold
);

TextStyle kLargeTextStyle = TextStyle(
    color: kWhiteColor,
    fontSize: kLargeFontSize,
    fontWeight: FontWeight.bold
);

enum Gender {male,female,other}