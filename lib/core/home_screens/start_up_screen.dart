import 'package:assignment_3/core/home_screens/details_screen.dart';
import 'package:assignment_3/core/home_screens/home_screen.dart';
import 'package:flutter/material.dart';
import '../app_colors.dart';

class StartUpScreen extends StatelessWidget{
  static String screenName = "StartUpScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkcolor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/screen0.png"),
            fit: BoxFit.cover
        ),
      ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text("Explore \nThe \nUniverse",style: TextStyle(color: Colors.white,fontSize: 48,fontWeight: FontWeight.w900,fontFamily: "Inter"),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
                        backgroundColor: AppColors.prim,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(29),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed(HomeScreen.screenName2);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Continue", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                          Icon(Icons.keyboard_arrow_right_rounded,size: 30,color: Colors.white,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}