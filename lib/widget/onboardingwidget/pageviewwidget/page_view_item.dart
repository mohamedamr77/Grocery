import 'package:flutter/cupertino.dart';

import 'customunbordingitem.dart';
import 'list_onboarding.dart';

class PageViewItem extends StatelessWidget{
  PageController? controller;
  void Function(int)? onPageChanged;
  PageViewItem({super.key,required this.controller,required this.onPageChanged});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: PageView.builder(
        controller: controller,
        itemCount: listunBoarding.length,
        onPageChanged: onPageChanged,
        itemBuilder: (BuildContext context, int index) {
          return CustomUnBoaringItem(
            image:listunBoarding[index].image??'',
            title: listunBoarding[index].title??'',
            describtion: listunBoarding[index].describtion??'',
          );
        },

      ),
    );
  }

}