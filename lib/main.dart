import 'package:flutter/material.dart';
import 'package:assigment/bmi/screens/bmi_calculator.dart';
import 'bmi/screens/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  // Constructor
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
         '/': (context) => SplashScreen(), // Splash screen as the initial route
        '/bmiCalculator': (context) => BmiCalculator(),
        // '/result': (context) => Result(), // Uncomment and implement if needed
      },

    );
  }
}