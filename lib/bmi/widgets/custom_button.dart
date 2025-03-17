import 'package:flutter/material.dart';
import 'package:assigment/bmi/colors.dart';

import '../colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.btnTitle , this.onClick});
  final String btnTitle;
  final void Function()? onClick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
          color: AppColors.pink,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25) ,bottomRight:  Radius.circular(25))
        ),
        child: Text(btnTitle,style: TextStyle(fontSize: 32 , fontWeight: FontWeight.w600,color: Colors.white),),
      ),
    );
  }
}