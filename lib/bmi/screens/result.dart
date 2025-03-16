import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:assigment/bmi/styles.dart';
import 'package:assigment/bmi/widgets/custom_appbar.dart';
import 'package:assigment/bmi/widgets/custom_button.dart';
import 'package:assigment/bmi/widgets/custom_card.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.bmiResult});
  final double bmiResult;

  String getBMICategory(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return 'Normal';
    } else if (bmi >= 25 && bmi <= 29.9) {
      return 'Overweight';
    } else {
      return 'Obesity';
    }
  }

  Color getCategoryColor(String category) {
    switch (category) {
      case 'Underweight':
        return Colors.blue;
      case 'Normal':
        return Colors.green;
      case 'Overweight':
        return Colors.orange;
      case 'Obesity':
        return Colors.red;
      default:
        return Colors.white;
    }
  }

  String getCategoryQuote(String category) {
    switch (category) {
      case 'Underweight':
        return 'You might need to gain some weight.';
      case 'Normal':
        return 'You have a normal body weight. Good job!';
      case 'Overweight':
        return 'Consider a healthier diet and more exercise.';
      case 'Obesity':
        return 'It’s important to seek medical advice.';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    String category = getBMICategory(bmiResult);
    Color categoryColor = getCategoryColor(category);
    String quote = getCategoryQuote(category);

    return Scaffold(
      backgroundColor: Color(0xff1c2135),
      body: SafeArea(
        child: Column(
          children: [
            CustomAppbar(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Your Result',
                      style: AppStyles.labelTextStyle.copyWith(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    CustomCard(
                      content: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              category,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: categoryColor,
                              ),
                            ),
                            SizedBox(height: 20), // Added spacing
                            Text(
                              bmiResult.toStringAsFixed(1),
                              style:TextStyle(
                                fontSize: 64,
                                  fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            ),
                            SizedBox(height: 40), // Added spacing
                            Text(
                              quote,
                              style: AppStyles.labelTextStyle.copyWith(
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              btnTitle: 'RE - Calculate',
              onClick: () {
                Navigator.pushReplacementNamed(context, '/bmiCalculator');
              },
            ),

          ],
        ),
      ),
    );
  }
}