import 'package:flutter/material.dart';
import 'package:supermarket/ui/signup_screen.dart';
import 'package:supermarket/widget/login_widget/divider_or_divider.dart';
import '../widget/login_widget/button.dart';
import '../widget/login_widget/have_account_row.dart';
import '../widget/login_widget/text_button.dart';
import '../widget/login_widget/text_form_field.dart';
class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff15995A),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Color(0xff24FF96),
                Color(0xff15995A),
              ]
          ),
        ),
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                children: [
                  const SizedBox(height: 35,),
                  const Text("Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontFamily: "IrishGrover-Regular",
                    fontWeight: FontWeight.w400,
                  ),
                  ),
                  const SizedBox(height: 40,),
                  const FieldLoginSignup(
                    text: 'user name or email address',
                    icon: null,),
                  const SizedBox(height: 12,),
                  const FieldLoginSignup(
                    text: 'password',
                    icon: Icon(Icons.remove_red_eye),),
                  const SizedBox(height: 15,),
                  CustomTextButton(
                    text: 'Forgotten password?',
                    onPressed: () {  },),
                  const SizedBox(height: 12,),
                  CustomButton(
                    text: 'Log In',
                    backgroundColor: const Color(0xff00947A),
                    textColor: Colors.white,
                    onTap: () { },
                  ),
                  const SizedBox(height: 12,),
                  CustomRowAccount(
                    text: "Don’t have an account?",
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
                    } ,
                    textButton: "sign up" ,
                  ),
                  const SizedBox(height: 12,),
                  const CustomRowDivider(),
                  const SizedBox(height: 12,),
                  CustomButton(
                    text: "Login With Google",
                    backgroundColor: const Color(0xffD9FFDF),
                    textColor: const Color(0xff858585),
                    onTap: () { },
                    child: Image.asset("assets/images/googleicon.png"),
                  ),
                  const SizedBox(height: 12,),
                  CustomButton(
                    text: "Login With Facebook",
                    backgroundColor: const Color(0xff0529EB),
                    textColor: Colors.white,
                    onTap: () { },
                    child: const CircleAvatar(
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
                  ),
                  const SizedBox(height: 20,),
                  const Row(
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

/*
levatedButton(
              onPressed: (){},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Spacer(flex: 1,),
                    Text(
                      "Log In",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontFamily: "Inter-Regular",
                        fontSize: 24,
                      ),
                    ),
                  ],
                )
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 40),
                backgroundColor: Color(0xff00947A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
 */