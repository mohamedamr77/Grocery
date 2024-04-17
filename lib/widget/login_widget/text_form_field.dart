import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  FieldLoginSignup extends StatelessWidget{
  final String? text;
  final Icon? icon;

  const FieldLoginSignup({super.key,required this.text,required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0, // Set the desired height
      width: 331.0, // Set the desired width
      child: TextFormField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffD9FFDF),
            hintText: text,
            suffixIcon: icon,
            hintStyle: TextStyle(
            fontSize: 15.0, // Adjust the font size as needed
            fontWeight: FontWeight.w400,
            fontFamily: "Inter-Regular",
            color: Color(0xff858585), // Adjust the color as needed
          ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffD9FFDF)),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ) ,
            focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent),
              borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }

}