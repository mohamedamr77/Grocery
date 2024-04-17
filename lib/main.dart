import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supermarket/ui/login_screen.dart';
import 'package:supermarket/ui/on_boardingScreen.dart';
import 'package:supermarket/ui/splashscreen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home:  LoginScreen(),
        debugShowCheckedModeBanner: false,
      );
  }

}