import 'package:flutter/material.dart';
import 'package:supermarket/widget/onboardingwidget/pageviewwidget/list_onboarding.dart';

import 'variable_data.dart';

class CustomNextOrStartButton extends StatelessWidget{
  void Function()? onPressed;
   CustomNextOrStartButton({super.key,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        bottom: 10,
      ),
      child: ElevatedButton(onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(140, 40),
          backgroundColor: const Color(0xff1bda7f),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),child: Text(
        VaribleApp.currentIndex==listunBoarding.length-1?"Get Started":"Next",
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.black,
          fontFamily: "Aladin-Regular",
          fontSize: 24,
        ),
      ),
      ),
    );
  }

}