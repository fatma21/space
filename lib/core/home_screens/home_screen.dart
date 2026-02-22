import 'package:assignment_3/core/app_bar_widget/app_bar_widget.dart';
import 'package:assignment_3/core/home_screens/focused_area.dart';
import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../model/planets.dart';
import 'details_screen.dart';


class HomeScreen extends StatefulWidget{
  static String screenName2 = "HomeScreen";

  @override
  State<HomeScreen> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  List<Planet> planets = [];
  int currentIndex = 0;
  void nextPage() {
    if (currentIndex < planets.length - 1) {
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
  @override
  void initState() {
    super.initState();
    Planet.loadPlanetsFromJson().then((loadedPlanets) {
      setState(() {
        planets = loadedPlanets;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return planets.isEmpty? Scaffold(
      backgroundColor: AppColors.darkcolor,
      body: Center(child: CircularProgressIndicator()),
    ):
      Scaffold(
      backgroundColor: AppColors.darkcolor,
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: planets.length,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  final planet = planets[index];

                  return FocusedArea(
                    focusimage: planet.image,
                  );
                },

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(onPressed: (){
                  previousPage();
                },
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        backgroundColor: AppColors.prim,
                        foregroundColor: Colors.white
                    ),
                    label: Icon(Icons.arrow_back)),
                Text("${planets[currentIndex].name}" , style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700, fontFamily: "Space Grotesk"),),
                ElevatedButton.icon(onPressed: (){
                  nextPage();
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
                final planet = planets[currentIndex];
                Navigator.pushNamed(
                  context,
                  DetailsScreen.screenName3,
                  arguments: planet,
                );
              },

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Explore ${planets[currentIndex].name}", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                  Icon(Icons.keyboard_arrow_right_rounded,size: 30,color: Colors.white,),
                ],
              ),
            ),
          ],
        ),

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

