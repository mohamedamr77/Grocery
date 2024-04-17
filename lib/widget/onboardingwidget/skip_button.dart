import 'package:flutter/material.dart';
import '../../ui/homePageScreen.dart';

class CustomSkipButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return TextButton(

      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>HomePage() )
        );
      },
      child: Text("Skip",
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Aladin-Regular",
          fontSize: 20,
        ),
      ),
    );
  }

}