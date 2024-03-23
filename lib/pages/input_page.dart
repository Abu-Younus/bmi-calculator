import 'package:bmi/constants/app_constants.dart';
import 'package:bmi/models/bmi.dart';
import 'package:bmi/pages/output_page.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_reusable_card.dart';
import '../widgets/card_gender.dart';
import '../widgets/reusable_card.dart';

class InputPages extends StatefulWidget {
  const InputPages({super.key});

  @override
  State<InputPages> createState() => _InputPagesState();
}

class _InputPagesState extends State<InputPages> {
  Gender? selectedGender;
  double height = 120.0;
  int age = 18;
  int weight = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onpressed: (){
                      setState(() {
                      });
                      selectedGender = Gender.male;
                    },
                    color: selectedGender==Gender.male ? kActiveColor : kInactiveColor,
                    widget: CardGender(
                      icon: Icons.male,
                      gender: kMale,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onpressed: (){
                      setState(() {
                      });
                      selectedGender = Gender.female;
                    },
                    color: selectedGender==Gender.female ? kActiveColor : kInactiveColor,
                    widget: CardGender(
                      icon: Icons.female,
                      gender: kFemale,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(child: ReusableCard(
              onpressed: null,
              color: kInactiveColor,
              widget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(kHeight,style: kMediumTextStyle,),
                  SizedBox(
                    height: kMediumPaMa
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text('${height.toInt()}',style: kLargeTextStyle,),
                      Text(kCM,style: kMediumTextStyle,),
                    ],
                  ),
                  Slider(
                      value: height,
                      min: 100,
                      max: 300,
                      activeColor: kActiveColor,
                      inactiveColor: kGreyColor,
                      onChanged: (newValue) {
                        height = newValue;
                        setState(() {

                        });
                      }
                  )
                ],
              ),
            )),
            Expanded(child: ReusableCard(
              onpressed: null,
              color: kInactiveColor,
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: BottomReusableCard(
                        value: age,
                        title: kAge,
                        onIncreasePressed: () {
                          setState(() {

                          });
                          age++;
                        },
                        onDecreasePressed: () {
                          setState(() {

                          });
                          age--;
                        }
                    ),
                  ),
                  Expanded(
                    child: BottomReusableCard(
                        value: weight,
                        title: kWeight,
                        onIncreasePressed: () {
                          setState(() {

                          });
                          weight++;
                        },
                        onDecreasePressed: () {
                          setState(() {

                          });
                          weight--;
                        }
                    ),
                  )
                ],
              ),
            )),
            InkWell(
              onTap: () async {
                BMI bmiObject = BMI(height.toInt(), weight);
                bool returnValue = await Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return OutputPage(
                    bmi: bmiObject.bmiResult!.toInt(),
                    condition: bmiObject.bodyCondition(),
                    message: bmiObject.message(),
                  );
                }),);
                if(returnValue != null && returnValue == true) {
                  setState(() {

                  });
                  height = 120.0;
                  age = 18;
                  weight = 30;
                }
              },
              child: Container(
                padding: EdgeInsets.all(kLargePaMa),
                margin: EdgeInsets.all(kLargePaMa),
                decoration: BoxDecoration(
                  color: kActiveColor,
                  borderRadius: BorderRadius.circular(kMediumPaMa),
                ),
                child: Text('Calculate Your BMI',style: kMediumTextStyle,textAlign: TextAlign.center,),
              ),
            )
          ],
        ),
      ),
    );
  }
}