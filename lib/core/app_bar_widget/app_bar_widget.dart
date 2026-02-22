import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class AppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  String titleText;
  AppBarWidget({this.titleText='Which planet \nwould you like to explore?',super.key});
  @override
  Size get preferredSize => const Size.fromHeight(130);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text('Explore',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700)),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
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
              child: Text(titleText,
                style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700),),
            ),
          ),
        )
    );
  }
}
