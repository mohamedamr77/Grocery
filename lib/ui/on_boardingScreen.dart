import 'package:flutter/material.dart';
import 'package:supermarket/ui/homePageScreen.dart';
import 'package:supermarket/widget/onboardingwidget/button_next_start.dart';
import 'package:supermarket/widget/onboardingwidget/pageviewwidget/list_onboarding.dart';
import 'package:supermarket/widget/onboardingwidget/variable_data.dart';
import 'package:supermarket/widget/onboardingwidget/pageviewwidget/page_view_item.dart';
import '../widget/onboardingwidget/dot_widget/list_generate_dot.dart';
import '../widget/onboardingwidget/skip_button.dart';

class OnBoardingScreen extends StatefulWidget {
   OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}
class _OnBoardingScreenState extends State<OnBoardingScreen> {
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

            PageViewItem(controller: _controller, onPageChanged: (int index)=>setState(() {
             VaribleApp.currentIndex=index;
           })),

            CustomGenerateDot(),

            CustomNextOrStartButton(
                onPressed: (){ //2 //

                  if( VaribleApp.currentIndex<listunBoarding.length-1){
                 _controller.nextPage(duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
                }
                else{
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
              }

            }),

            CustomSkipButton(),

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