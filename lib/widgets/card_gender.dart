import 'package:bmi/constants/app_constants.dart';
import 'package:flutter/material.dart';

class CardGender extends StatelessWidget {
  final IconData? icon;
  final String? gender;
  const CardGender({
    super.key,
    @required this.icon,
    @required this.gender,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Icon(icon),
          const SizedBox(height: 8,),
          Text(gender??'', style: kMediumTextStyle,),
        ],
      ),
    );
  }
}