import 'package:bmi/constants/app_constants.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color? color;
  final Widget? widget;
  final Function()? onpressed;
  const ReusableCard({
    super.key,
    this.color,
    this.widget,
    this.onpressed
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        padding: EdgeInsets.all(kLargePaMa),
        margin: EdgeInsets.all(kLargePaMa),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(kLargePaMa)
        ),
        child: widget,
      ),
    );
  }
}