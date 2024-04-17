import 'package:flutter/material.dart';

class CustomRowDivider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 2,
          width: MediaQuery.of(context).size.width/2-30,
          color: Colors.black,
        ),
        SizedBox(width: 6,),
        Text("or",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontFamily: "Inter-Regular",
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 6,),
        Container(
          height: 2,
          width: MediaQuery.of(context).size.width/2-30,
          color: Colors.black,
        ),
      ],
    );
  }

}