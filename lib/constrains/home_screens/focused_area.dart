import 'package:assignment_3/constrains/home_screens/explore_button.dart';
import 'package:assignment_3/constrains/home_screens/screen_3.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';

class FocusedArea extends StatelessWidget{
  final VoidCallback onNext;
  final VoidCallback onBack;
  String focusimage;
  String focusetext;
  String description ;
  String distancefromSun;
  String LengthofDay;
  String OrbitalPeriod;
  String Radius;
  String Mass;
  String Gravity;
  String SurfaceArea;
  String plantname;
  String planettitle;
  FocusedArea({required this.focusimage,required this.focusetext,required this.description,
  required this.distancefromSun,required this.LengthofDay,required this.OrbitalPeriod,
  required this.Radius,required this.Mass,required this.Gravity,required this.SurfaceArea,
  required this.plantname,required this.planettitle,required this.onNext,
    required this.onBack,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("assets/images/$focusimage.png",width: 342,height: 339),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton.icon(onPressed: (){
                onBack();
              },
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: AppColors.prim,
                      foregroundColor: Colors.white
                  ),
                  label: Icon(Icons.arrow_back)),
              Text("$focusetext" , style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700, fontFamily: "Space Grotesk"),),
              ElevatedButton.icon(onPressed: (){
                onNext();
              },
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: AppColors.prim,
                      foregroundColor: Colors.white
                  ),
                  label: Icon(Icons.arrow_forward))
            ],
          ),
          SizedBox(height: 50,),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
              backgroundColor: AppColors.prim,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(29),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                Screen3.screenName3,
                arguments: {
                  'description': description,
                  'distancefromSun': distancefromSun,
                  'LengthofDay': LengthofDay,
                  'OrbitalPeriod': OrbitalPeriod,
                  'Radius': Radius,
                  'Mass': Mass,
                  'Gravity': Gravity,
                  'SurfaceArea': SurfaceArea,
                  'plantname': plantname,
                  'planettitle': planettitle,
                },
              );

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Explore $plantname    ", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                Icon(Icons.keyboard_arrow_right_rounded,size: 30,color: Colors.white,),
              ],
            ),
          ),
        ]
    );
  }
}