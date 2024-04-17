import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{
   final String? text;
   final String? image;
   final Color? backgroundColor;
   final Color? textColor;
   void Function()? onTap;

   CustomButton({super.key,required this.text, this.image,required this.backgroundColor,required this.textColor,required this.onTap});

   @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: backgroundColor,
         child: ListTile(
           leading: image != null ? Image.asset(image!,
             // Set appropriate width and height constraints as needed
             width: 40,
             height: 40,
           ) : null,
           title: Text("$text",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: textColor,
              fontFamily: "Inter-Regular",
              fontSize: 20,
            ),
          ),

        ),
      ),
    );
  }

}