import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supermarket/variable_data.dart';

class CustomDot extends StatelessWidget {
  int index;
   CustomDot({required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: VaribleApp.currentIndex==index? 25:10,
      margin:const EdgeInsets.only(right: 6),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:VaribleApp.currentIndex==index? Colors.green:Colors.white,
      ),
    );
  }
}