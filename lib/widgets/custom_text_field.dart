import 'package:flutter/material.dart';

import '../style/common-style.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  bool isPass = false;
  TextStyle style = CommonStyle.textSize_16;
  TextInputType inputType = TextInputType.name;
  String hintText = '';
  Color fillColor = CommonStyle.colorWhite;
  TextStyle hintStyle = CommonStyle.hintTextSize14;
  Widget prefixIcon;
  EdgeInsets contentPadding = EdgeInsets.symmetric(vertical: 10, horizontal: 10);
  Widget suffixIcon;
  BorderSide borderSide = BorderSide.none;

  CustomTextField({this.isPass, this.style, this.inputType, this.hintText, this.fillColor, this.hintStyle, this.prefixIcon, this.contentPadding, this.suffixIcon, this.borderSide});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 30,
      ),
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: TextFormField(
        style: style,
        keyboardType: inputType,
        decoration: InputDecoration(
          fillColor: fillColor,
          filled: true,
          hintText: hintText,
          hintStyle: hintStyle,
          focusColor: Colors.black,
          prefixIcon: prefixIcon == null ? null : prefixIcon,
          contentPadding: contentPadding,
          suffixIcon: suffixIcon == null ? null : suffixIcon,
          errorMaxLines: 3,
          errorBorder: _borderInput(CommonStyle.redColor),
          focusedBorder: _borderInput(CommonStyle.colorSelectItemNavigation),
          errorStyle: CommonStyle.textSize_12.copyWith(color: CommonStyle.redColor),
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)), borderSide: borderSide),
        ),
      ),
    );
  }

  OutlineInputBorder _borderInput(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(width: 1, color: color),
    );
  }
}
