import 'package:assignment_3/core/home_screens/explore_button.dart';
import 'package:assignment_3/core/home_screens/details_screen.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';

class FocusedArea extends StatelessWidget{
  String focusimage;
  FocusedArea({required this.focusimage,});
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("assets/images/$focusimage",width: 342,height: 339),
          SizedBox(height: 30,),
        ]
    );
  }
}