import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

import '../app_colors.dart';

class Screen3 extends StatelessWidget{
  static String screenName3 = "ScreenThree";
  final String description;
  final String distancefromSun;
  final String LengthofDay;
  final String OrbitalPeriod;
  final String Radius;
  final String Mass;
  final String Gravity;
  final String SurfaceArea;
  final String plantname;
  final String planettitle;

  const Screen3({
    Key? key,
    required this.description,
    required this.distancefromSun,
    required this.LengthofDay,
    required this.OrbitalPeriod,
    required this.Radius,
    required this.Mass,
    required this.Gravity,
    required this.SurfaceArea,
    required this.plantname,
    required this.planettitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkcolor,
      appBar: AppBar(
          title: Text('Explore',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700)),
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.white, // <-- this changes the back button color
          ),
          flexibleSpace: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/images/Rectangle 4.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black,
                        Color.fromARGB(90,14 , 14, 14),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          bottom: PreferredSize(
            preferredSize:Size.fromHeight(90),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                 child: Text("$planettitle",
                   style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700),),
              ),
            ),
          )
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(
                 height: 300,
                   child: Flutter3DViewer(src: "assets/3d/$plantname.glb")),
               SizedBox(height: 30,),
               Text("About",
                   textAlign: TextAlign.start,
                   style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700,fontFamily: "Space Grotesk")),
               SizedBox(height: 10,),
               Text("$description",
                   textAlign: TextAlign.start,
                   style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w300,fontFamily: "Space Grotesk")),
               SizedBox(height: 10,),
               Text("Distance from Sun (km) : $distancefromSun",
                   textAlign: TextAlign.start,
                   style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700,fontFamily: "Space Grotesk")),
               SizedBox(height: 10,),
               Text("Length of Day (hours) : $LengthofDay",
                   textAlign: TextAlign.start,
                   style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700,fontFamily: "Space Grotesk")),
               SizedBox(height: 10,),
               Text("Orbital Period (Earth years) :  $OrbitalPeriod",
                   textAlign: TextAlign.start,
                   style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700,fontFamily: "Space Grotesk")),
               SizedBox(height: 10,),
               Text("Radius (km) : $Radius",
                   textAlign: TextAlign.start,
                   style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700,fontFamily: "Space Grotesk")),
               SizedBox(height: 10,),
               Text("Mass (kg) : $Mass",
                   textAlign: TextAlign.start,
                   style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700,fontFamily: "Space Grotesk")),
               SizedBox(height: 10,),
               Text("Gravity (m/s²) : $Gravity",
                   textAlign: TextAlign.start,
                   style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700,fontFamily: "Space Grotesk")),
               SizedBox(height: 10,),
               Text("Surface Area (km²) : $SurfaceArea",
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