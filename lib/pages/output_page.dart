import 'package:bmi/constants/app_constants.dart';
import 'package:flutter/material.dart';

import '../widgets/reusable_card.dart';

class OutputPage extends StatelessWidget {
  final int bmi;
  final String condition;
  final String message;

  OutputPage({
    super.key,
    required this.bmi,
    required this.condition,
    required this.message
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context,true);
          },
            child: Icon(Icons.arrow_back_ios)
        ),
        title: Text('BMI Result'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ReusableCard(
              onpressed: null,
              color: kInactiveColor,
              widget: Column(
                children: [
                  Text('$bmi',style: kLargeTextStyle,),
                  SizedBox(height: kMediumPaMa,),
                  Text(condition,style: kMediumTextStyle,),
                  SizedBox(height: kLargePaMa,),
                  Text(message,style: kSmallTextStyle,),

                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context,true);
              },
              child: Container(
                padding: EdgeInsets.all(kLargePaMa),
                margin: EdgeInsets.all(kLargePaMa),
                decoration: BoxDecoration(
                  color: kActiveColor,
                  borderRadius: BorderRadius.circular(kMediumPaMa),
                ),
                child: Text('Recalculate Your BMI',style: kMediumTextStyle,textAlign: TextAlign.center,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
