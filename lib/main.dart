import 'package:flutter/material.dart';
import 'package:assigment/bmi/screens/bmi_calculator.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {

  // constructor
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {

        '/bmiCalculator' : (context) => BmiCalculator(),
        // '/result' : (context) => Result(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: '/bmiCalculator',
    );
  }
}


