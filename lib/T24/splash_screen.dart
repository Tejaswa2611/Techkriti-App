import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techkriti/T24/navigation/navBar.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        backgroundColor: Colors.black,
        splashIconSize: double.infinity,
        splashTransition: SplashTransition.slideTransition,
        // ignore: sized_box_for_whitespace
        splash: Container(
          width: double.infinity,
          // decoration: const BoxDecoration(

          //     gradient: LinearGradient(colors: [
          //       Color.fromARGB(111, 10, 216, 223),
          //       Color.fromARGB(255, 83, 18, 235)
          //     ]),
          //     ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/blacktechkriti.png",
                  color: const Color.fromARGB(255, 55, 255, 245),
                  height: 200,
                  width: 200),
              const Padding(
                padding: EdgeInsets.only(top: 90.0),
                child: Text(
                  "Techkriti'24",
                  style: TextStyle(
                      fontSize: 40,
                      color: Color.fromARGB(255, 55, 255, 245),
                      fontFamily: 'Montserrat'),
                ),
              )
            ],
          ),
        ),
        nextScreen: const Navbar());
  }
}
