import 'package:flutter/material.dart';
class CustomUnBoaringItem extends StatelessWidget{

  String title;
  String describtion;
  String image;

  CustomUnBoaringItem({super.key,required this.image,required this.title,required this.describtion});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 70,
                left: 60,
                top: 35,
              ),
              child: Text(title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: "IrishGrover-Regular",
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Text(describtion,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                  fontFamily: "Abel-Regular",
                  fontWeight: FontWeight.w400,)
            ),
            const SizedBox(height: 40,),
            Image.asset(image,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }

}