import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:supermarket/ui/on_boardingScreen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(
        seconds: 3
    ), () {

      Navigator.push(context, MaterialPageRoute(builder: (c) {
        return const OnBoardingScreen();
      } ));

    }  ) ;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            ZoomIn(
              child: Center(
                child: Image.asset("assets/images/logo.png" ,

                ),
              ),
            ),
            const SizedBox(height: 30,),
            const Text("Nature Mart",
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.w400,
              fontFamily: "Aladin-Regular",
            ),
            )

          ],
        ),
      ),
    );
  }
}