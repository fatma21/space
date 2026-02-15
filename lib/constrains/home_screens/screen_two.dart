import 'package:assignment_3/constrains/home_screens/focused_area.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';


class ScreenTwo extends StatefulWidget{
  static String screenName2 = "ScreenTwo";

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  final PageController _pageController = PageController();
  int currentIndex = 0;
  void nextPage() {
    if (currentIndex < foucselist.length - 1) {
      currentIndex++;
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  void previousPage() {
    if (currentIndex > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  late List<Widget>foucselist=[
    FocusedArea(focusimage: "sun", focusetext: "Sun",planettitle: "The Sun: Our Solar System's Star",description: "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
    distancefromSun: "0",LengthofDay: "0",OrbitalPeriod: "0",Radius: "695700",Mass: "1.989 × 10³⁰",Gravity: "274",SurfaceArea: "6.09 × 10¹²",
    plantname: "sun",onNext: nextPage,
      onBack: previousPage,
    ),
    FocusedArea(focusimage: "mercury", focusetext: "Mercury",planettitle: "Mercury: The Closest Planet",plantname: "mercury",
    description: "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
    distancefromSun: "57909227",LengthofDay: "1407.6",OrbitalPeriod: "0.24",Radius: "2439.7",Mass: "3.301 × 10²³",
    Gravity: "3.7",SurfaceArea: "7.48 × 10⁷",onNext: nextPage,
      onBack: previousPage,
    ),
    FocusedArea(focusimage: "venus", focusetext: "Venus",plantname: "venus",planettitle: "Venus: Earth's Toxic Twin",
    description: "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.",
    LengthofDay: "5832.2",OrbitalPeriod: "0.62",Radius: "6051.8",Mass: "4.867 × 10²⁴",Gravity: "8.87",
    SurfaceArea: "4.60 × 10⁸",distancefromSun: "108209072",onNext: nextPage,
      onBack: previousPage,
    ),
    FocusedArea(focusimage: "earth", focusetext: "Earth",planettitle: "Earth: Our Blue Marble",plantname: "earth",description: "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
    distancefromSun: "149598026",LengthofDay: "23.93",OrbitalPeriod: "1",Radius: "6371",Mass: "5.972 × 10²⁴",Gravity: "9.81",
    SurfaceArea: "5.10 × 10⁸",onNext: nextPage,
      onBack: previousPage,
    ),
    FocusedArea(focusimage: "mars", focusetext: "Mars",plantname: "mars",planettitle: "ars: The Red Planet",description: "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
    distancefromSun: "227943824",LengthofDay: "24.62",OrbitalPeriod: "1.88",Radius: "3389.5",Mass: "6.39 × 10²³",Gravity: "3.71",
    SurfaceArea: "1.45 × 10⁸",onNext: nextPage,
      onBack: previousPage,
    ),
    FocusedArea(focusimage: "jupiter", focusetext: "Jupiter",planettitle: "Jupiter: The Gas Giant",plantname: "jupiter",description: "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
    distancefromSun: "778547669",LengthofDay: "9.92",OrbitalPeriod: "11.86",Radius: "69911",Mass: "1.898 × 10²⁷",Gravity: "24.79",
    SurfaceArea: "6.21 × 10¹⁵",onNext: nextPage,
      onBack: previousPage,
    ),
    FocusedArea(focusimage: "saturn", focusetext: "Saturn",plantname: "saturn",planettitle: "Saturn: The Ringed Planet",description: "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.",
    distancefromSun: "1426666422",LengthofDay: "10.66",OrbitalPeriod: "29.46",Radius: "58232",Mass: "5.683 × 10²⁶",Gravity: "10.44",
    SurfaceArea: "4.27 × 10¹⁵",onNext: nextPage,
      onBack: previousPage,
    ),
    FocusedArea(focusimage: "uranus", focusetext: "Uranus",plantname: "uranus",planettitle: "Uranus: The Tilted Planet",description: "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
    distancefromSun: "2870990000",LengthofDay: "17.24",OrbitalPeriod: "84.01",Radius: "25362",Mass: "8.681 × 10²⁵",Gravity: "8.69",
    SurfaceArea: "8.1 × 10¹⁵",onNext: nextPage,
      onBack: previousPage,
    ),
    FocusedArea(focusimage: "neptune", focusetext: "Neptune",plantname: "neptune",planettitle: "Neptune: The Distant World",description: "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
    distancefromSun: "4498252900",LengthofDay: "16.11",OrbitalPeriod: "164.8",Radius: "24622",Mass: "1.024 × 10²⁶",Gravity: "11.15",
    SurfaceArea: "7.65 × 10¹⁵",onNext: nextPage,
      onBack: previousPage,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkcolor,
      appBar: AppBar(
        title: Text('Explore',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700)),
        centerTitle: true,
        flexibleSpace: Stack(
          children: [
            // 1. The Image
            Positioned.fill(
              child: Image.asset(
                'assets/images/Rectangle 4.png',
                fit: BoxFit.cover,
              ),
            ),
            // 2. The Gradient Overlay
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black, // Darker at the top for status bar readability
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
                child: Text("Which planet \nwould you like to explore?",
                  style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700),),
              ),
            ),
        )
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          scrollDirection: Axis.horizontal,
          itemCount: foucselist.length,

             itemBuilder: (context,int index){
               return foucselist[index];
             }
        )
      )

      // appBar: AppBar(
      //   title: Text("Explore",
      //     style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
      //   centerTitle: true,
      //
      //   flexibleSpace: Container(
      //     decoration: BoxDecoration(
      //         image: DecorationImage(
      //           image: AssetImage("assets/images/Rectangle 4.png"),
      //           fit: BoxFit.cover,
      //         ),
      //       gradient: LinearGradient(
      //         colors: [
      //           Colors.black.withValues(alpha: 0.8),
      //           Colors.transparent,
      //         ],
      //         begin: Alignment.topLeft,
      //         // Optional: end point (bottom right by default)
      //         end: Alignment.bottomRight,
      //       ),
      //
      //     )
      //   ),
      // ),
    );
  }
}

