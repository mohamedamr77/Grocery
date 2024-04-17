import 'package:flutter/material.dart';
import '../pageviewwidget/list_onboarding.dart';
import 'build_dot.dart';

class CustomGenerateDot extends StatelessWidget{
  const CustomGenerateDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:   List.generate(
          listunBoarding.length,
              (index) => CustomDot(index: index),
        ),
      ),
    );
  }

}