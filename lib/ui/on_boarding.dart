import 'package:flutter/material.dart';
import 'package:supermarket/widget/onboardingwidget/build_dot.dart';
import 'package:supermarket/ui/homePage.dart';
import 'package:supermarket/widget/onboardingwidget/pageviewwidget/list_onboarding.dart';
import 'package:supermarket/variable_data.dart';

import '../widget/onboardingwidget/pageviewwidget/customunbordingitem.dart';

class OnBoarding extends StatefulWidget {
   OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}
class _OnBoardingState extends State<OnBoarding> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
         child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: listunBoarding.length,
                onPageChanged: (int index)=>setState(() {
                 VaribleApp.currentIndex=index;
                }),
                itemBuilder: (BuildContext context, int index) {
                 return CustomUnBoaringItem(
                    image:listunBoarding[index].image??'',
                    title: listunBoarding[index].title??'',
                    describtion: listunBoarding[index].describtion??'',
                  );
                },

              ),
            ),
            Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:   List.generate(
                          listunBoarding.length,
                          (index) => CustomDot(index: index),
                  ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 10,
              ),
              child: ElevatedButton(onPressed: (){ //2 //
                 if( VaribleApp.currentIndex<listunBoarding.length-1){
                   setState(() {
                     VaribleApp.currentIndex++;
                   });
                 }
              },child: Text(
                  VaribleApp.currentIndex==listunBoarding.length-1?"Get Started":"Next",
             textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Aladin-Regular",
                fontSize: 24,
              ),
              ),
              style: ElevatedButton.styleFrom(
                 minimumSize: Size(140, 40),
                backgroundColor: Color(0xff1bda7f),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              ),
            ),
            TextButton(

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
            ),
            SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}

//   CustomDot(int index,BuildContext context){
//     return Container(
//       height: 10,
//       width:VaribleApp.currentIndex==index? 20:10,
//       margin: EdgeInsets.only(right: 6),
//       decoration:  BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color:VaribleApp.currentIndex==index? Colors.green:Colors.blue,
//       ),
//     );
// }