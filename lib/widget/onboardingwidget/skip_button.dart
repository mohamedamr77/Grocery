import 'package:flutter/material.dart';
import '../../ui/homePageScreen.dart';

class CustomSkipButton extends StatelessWidget{
  const CustomSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(

      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>const HomePage() )
        );
      },
      child: const Text("Skip",
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Aladin-Regular",
          fontSize: 20,
        ),
      ),
    );
  }

}