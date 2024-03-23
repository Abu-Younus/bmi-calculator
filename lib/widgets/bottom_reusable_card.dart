import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

class BottomReusableCard extends StatelessWidget {
  final int value;
  final String title;
  final Function() onIncreasePressed;
  final Function() onDecreasePressed;

  const BottomReusableCard({
    super.key,
    required this.value,
    required this.title,
    required this.onIncreasePressed,
    required this.onDecreasePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title,style: kMediumTextStyle,),
        Text(value.toString(),style: kLargeTextStyle,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: kXLargePaMa,
                backgroundColor: kActiveColor,
                child: IconButton(
                    onPressed: onDecreasePressed,
                    icon: Image.asset('assets/images/minus.png',color: kWhiteColor,)
                )
            ),
            SizedBox(width: kMediumPaMa,),
            CircleAvatar(
                radius: kXLargePaMa,
                backgroundColor: kActiveColor,
                child: IconButton(
                    onPressed: onIncreasePressed,
                    icon: Image.asset('assets/images/plus.png',color: kWhiteColor,)
                )
            ),
          ],
        )
      ],
    );
  }
}