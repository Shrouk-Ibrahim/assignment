import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:assigment/bmi/screens/bmi_calculator.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Lottie.asset(
                'assets/animation/Animation - 1742172156684.json',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'BMI', // Text to display
              style: TextStyle(color: Color(0xff24263B),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      nextScreen: const BmiCalculator(),
      duration: 3500,
      backgroundColor: Colors.grey,
      splashIconSize: 500,
      splashTransition: SplashTransition.fadeTransition,
      animationDuration: const Duration(seconds: 2),
    );
  }
}