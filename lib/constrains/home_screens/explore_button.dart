import 'package:assignment_3/constrains/home_screens/screen_3.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';

class ExploreButton extends StatelessWidget{
  dynamic fun;
  ExploreButton(this.fun);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
        backgroundColor: AppColors.prim,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(29),
        ),
      ),
      onPressed: () {
        fun;
        // Navigator.pushNamed(
        //   context,
        //   Screen3.screenName3,
        //   arguments: {
        //     'name': 'Fatma',
        //     'age': 22,
        //   },
        // );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Continue", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
          Icon(Icons.keyboard_arrow_right_rounded,size: 30,color: Colors.white,),
        ],
      ),
    );
  }
}