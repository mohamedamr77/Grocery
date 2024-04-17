import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Color(0xff24FF96),
                Color(0xff15995A),
              ]

          ),
        ),
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
              children: [
                SizedBox(height: 55,),
                Text("Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontFamily: "IrishGrover-Regular",
                  fontWeight: FontWeight.w400,
                ),
                ),
                 SizedBox(height: 43,),
                SizedBox(
                  height: 50.0, // Set the desired height
                  width: 331.0, // Set the desired width
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffD9FFDF),
                      hintText: " Username or Email Address",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
              ],
          ),
        ),
      ),
    );
  }

}