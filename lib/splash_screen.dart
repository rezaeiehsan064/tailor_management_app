import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:tailor_management_app/main_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myapp(),
    ),
  );
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        AnimatedSplashScreen(
          splash:'images/splash2.jpg',
          centered: true,
          nextScreen: main_page(),
          splashTransition: SplashTransition.scaleTransition,
          animationDuration: Duration(seconds: 2),
          splashIconSize: double.infinity,
          backgroundColor: Colors.black,
        ),
        Column(children: [
          SizedBox(
            height: 500,
          ),
          Center(
            child: Text(
              '''
             V . 1 . 0 . 0
          مدریت خیاطی   
          ''',
              style: TextStyle(color: Colors.white),
            ),
          )
        ]),
      ]),
    );
  }
}
