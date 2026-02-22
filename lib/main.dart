import 'package:assignment_3/core/home_screens/start_up_screen.dart';
import 'package:flutter/material.dart';

import 'core/home_screens/details_screen.dart';
import 'core/home_screens/home_screen.dart';
import 'core/model/planets.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartUpScreen(),
      onGenerateRoute: (settings) {
        if (settings.name == DetailsScreen.screenName3) {
          final planet = settings.arguments as Planet;
          return MaterialPageRoute(
            builder: (context) => DetailsScreen(planet: planet),
          );
        }
        return null;
      },
      routes: {StartUpScreen.screenName: (context) => StartUpScreen(),
      HomeScreen.screenName2: (context) => HomeScreen(),
      //;Screen3.screenName3: (context) => Screen3(Planet:planet),
      },
    );
  }
}

