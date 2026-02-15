import 'package:assignment_3/constrains/home_screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'constrains/home_screens/screen_3.dart';
import 'constrains/home_screens/screen_two.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      onGenerateRoute: (settings) {
        if (settings.name == Screen3.screenName3) {
          final args = settings.arguments as Map<String, dynamic>;

          return MaterialPageRoute(
            builder: (context) => Screen3(
              description: args['description'],
              distancefromSun: args['distancefromSun'],
              LengthofDay: args['LengthofDay'],
              OrbitalPeriod: args['OrbitalPeriod'],
              Radius: args['Radius'],
              Mass: args['Mass'],
              Gravity: args['Gravity'],
              SurfaceArea: args['SurfaceArea'],
              plantname: args['plantname'],
              planettitle: args['planettitle'],
            ),
          );
        }
        return null;
      },
      routes: {HomeScreen.screenName: (context) => HomeScreen(),
      ScreenTwo.screenName2: (context) => ScreenTwo(),
      //Screen3.screenName3: (context) => Screen3(),
      },
    );
  }
}

