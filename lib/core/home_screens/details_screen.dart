import 'package:assignment_3/core/app_bar_widget/app_bar_widget.dart';
import 'package:assignment_3/core/model/planets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

import '../app_colors.dart';

class DetailsScreen extends StatelessWidget{
  static String screenName3 = "DetailsScreen";
  final Planet planet;

  const DetailsScreen({
    Key? key,
    required this.planet
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkcolor,
      appBar: AppBarWidget(titleText: planet.title,),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(
                 height: 300,
                   child: Flutter3DViewer(src: "assets/3d/${planet.model3d}")),
               SizedBox(height: 30,),
               Text("About",
                   textAlign: TextAlign.start,
                   style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700,fontFamily: "Space Grotesk")),
               SizedBox(height: 10,),
               Text("${planet.about}",
                   textAlign: TextAlign.start,
                   style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w300,fontFamily: "Space Grotesk")),
               SizedBox(height: 10,),
               Text("Distance from Sun (km) : ${planet.distanceFromSun}",
                   textAlign: TextAlign.start,
                   style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700,fontFamily: "Space Grotesk")),
               SizedBox(height: 10,),
               Text("Length of Day (hours) : ${planet.lengthOfDay}",
                   textAlign: TextAlign.start,
                   style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700,fontFamily: "Space Grotesk")),
               SizedBox(height: 10,),
               Text("Orbital Period (Earth years) :  ${planet.orbitalPeriod}",
                   textAlign: TextAlign.start,
                   style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700,fontFamily: "Space Grotesk")),
               SizedBox(height: 10,),
               Text("Radius (km) : ${planet.radius}",
                   textAlign: TextAlign.start,
                   style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700,fontFamily: "Space Grotesk")),
               SizedBox(height: 10,),
               Text("Mass (kg) : ${planet.mass}",
                   textAlign: TextAlign.start,
                   style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700,fontFamily: "Space Grotesk")),
               SizedBox(height: 10,),
               Text("Gravity (m/s²) : ${planet.gravity}",
                   textAlign: TextAlign.start,
                   style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700,fontFamily: "Space Grotesk")),
               SizedBox(height: 10,),
               Text("Surface Area (km²) : ${planet.surfaceArea}",
                   textAlign: TextAlign.start,
                   style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700,fontFamily: "Space Grotesk")),
               SizedBox(height: 10,),


             ],
          ),
        ),
      ),
    );
  }
}