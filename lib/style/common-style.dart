import 'package:flutter/material.dart';

abstract class CommonStyle {
  static Color colorWhite = const Color(0xFFFFFFFF);
  static Color colorSelectItemNavigation = const Color(0xff5892F6);
  static Color colorNavigationBottom = const Color(0xffC7C7C7);
  static Color colorGrey = Color(0xffE5E5E5);
  static Color colorBlue = Color(0xffB5DAFF);
  static Color colorBackground = Color(0xffF1F1F1);
  static Color colorGreyText = Color(0xff6E7985);
  static Color colorBlackText = Color(0xff253647);
  static Color colorPink = Color(0xffF8D6DF);


  static TextStyle textBoldSize_12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: CommonStyle.colorBlackText,
    decoration: TextDecoration.none,
  );
  static TextStyle textSize_12 = TextStyle(
    fontSize: 12,
    color: CommonStyle.colorBlackText,
    decoration: TextDecoration.none,
  );

  static TextStyle textSize_14 = TextStyle(
    fontSize: 14,
    color: CommonStyle.colorBlackText,
    decoration: TextDecoration.none,
  );
  static TextStyle textBoldSize_14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: CommonStyle.colorBlackText,
    decoration: TextDecoration.none,
  );

  static TextStyle textSize_16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: CommonStyle.colorBlackText,
    decoration: TextDecoration.none,
  );

  static TextStyle textBoldSize_16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: CommonStyle.colorBlackText,
    decoration: TextDecoration.none,
  );

  static TextStyle textBoldSize_18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: CommonStyle.colorBlackText,
    decoration: TextDecoration.none,
  );
  static TextStyle textSize_18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: CommonStyle.colorBlackText,
    decoration: TextDecoration.none,
  );

}