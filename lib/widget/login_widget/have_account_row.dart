import 'package:flutter/material.dart';
import 'package:supermarket/widget/login_widget/text_button.dart';

class CustomRowAccount extends StatelessWidget{
 final String? text;
 final String? textButton;
 void Function()? onPressed;

  CustomRowAccount({super.key,required this.text,required this.textButton,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("$text",
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            fontFamily: "Inter-Regular",
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),),
        const SizedBox(width: 3,),
        CustomTextButton(
          text: '$textButton',
          onPressed: onPressed,
        )
      ],
    );
  }

}