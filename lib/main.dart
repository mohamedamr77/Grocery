import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supermarket/ui/on_boardingScreen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home:  OnBoarding(),
        debugShowCheckedModeBanner: false,
      );
  }

}