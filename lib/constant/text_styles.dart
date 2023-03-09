import 'package:emad_app/constant/colors.dart';
import 'package:flutter/material.dart';

class myTextStyles {
  static const title1 = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 18,
    color: MyColors.lessBlackColor,
    fontWeight: FontWeight.bold,
  );
  static const title2 = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 16,
    color: MyColors.lessBlackColor,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.2,
  );
  static const subTitle = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 14,
    color: MyColors.secondaryTextColor,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.2,
  );

  static const body = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 12,
    color: MyColors.lightGreenColor,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.2,
  );
}
