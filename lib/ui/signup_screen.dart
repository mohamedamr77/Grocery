import 'package:flutter/material.dart';
import 'package:supermarket/widget/login_widget/divider_or_divider.dart';
import '../widget/login_widget/button.dart';
import '../widget/login_widget/have_account_row.dart';
import '../widget/login_widget/text_button.dart';
import '../widget/login_widget/text_form_field.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff15995A),
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 35,),
                Text("Sign Up",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontFamily: "IrishGrover-Regular",
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 40,),
                FieldLoginSignup(
                  text: 'user name or email address',
                  icon: null,),
                SizedBox(height: 12,),
                FieldLoginSignup(
                  text: 'Create password',
                  icon: null,),
                SizedBox(height: 15,),
                FieldLoginSignup(
                  text: 'Confirm password',
                  icon: Icon(Icons.remove_red_eye),),
                SizedBox(height: 12,),
                CustomButton(
                  text: 'Sign up',
                  backgroundColor: Color(0xff00947A),
                  textColor: Colors.white,
                  onTap: () { },
                ),
                SizedBox(height: 12,),
                CustomRowAccount(
                  text: "Already have an account?",
                  onPressed:(){
                    Navigator.pop(context);
                  } ,
                  textButton: "Login" ,
                ),
                SizedBox(height: 12,),
                CustomRowDivider(),
                SizedBox(height: 12,),
                CustomButton(
                  text: "Login With Google",
                  child: Image.asset("assets/images/googleicon.png"),
                  backgroundColor: Color(0xffD9FFDF),
                  textColor: Color(0xff858585),
                  onTap: () { },
                ),
                SizedBox(height: 12,),
                CustomButton(
                  text: "Login With Facebook",
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Center(
                      child: Text("f",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff0529EB),
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          fontFamily: "JetBrainsMono-Regular",
                        ),
                      ),
                    ),
                  ),
                  backgroundColor: Color(0xff0529EB),
                  textColor: Colors.white,
                  onTap: () { },
                ),
                SizedBox(height: 20,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("About",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Inter-Regular",
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 12,),
                      Text("Help",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Inter-Regular",
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 12,),
                      Text("More",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Inter-Regular",
                          color: Colors.black,
                        ),
                      ),
                    ]
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
