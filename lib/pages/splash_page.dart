import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:fluro_potd/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFF6F2F2),
            ),
            child: AnimatedSplashScreen(
              splash: SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset('assets/images/flutter.png')),
              animationDuration: const Duration(milliseconds: 800),
              splashIconSize: 500,
              centered: true,
              nextScreen: const HomePage(),
              splashTransition: SplashTransition.scaleTransition,
              pageTransitionType: PageTransitionType.fade,
            ),
          ),
        ));
  }
}
