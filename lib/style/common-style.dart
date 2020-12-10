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
  static Color redColor = Color(0xFFD62C2C);
  static Color darkBlueColor = Color(0xFF0045BB);

  static BoxShadow defaultShadow = BoxShadow(
    offset: Offset(10, 5),
    blurRadius: 27,
    color: Colors.black12, // Black color with 12% opacity
  );

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
    fontWeight: FontWeight.bold,
    color: CommonStyle.colorBlackText,
    decoration: TextDecoration.none,
  );
  static TextStyle textSize_18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w300,
    color: CommonStyle.colorBlackText,
    decoration: TextDecoration.none,
  );
  static TextStyle hintTextSize14 = TextStyle(
    color: colorBlue,
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );
  static TextStyle textSize22 = TextStyle(
    color: colorBlackText,
    fontSize: 22,
    fontWeight: FontWeight.w300,
    fontFamily: 'SemiBold',
  );
}
