import 'package:flutter/material.dart';

import '../style/common-style.dart';
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
  Function validator;
  TextEditingController controller;

  CustomTextField({this.isPass, this.style, this.inputType, this.hintText, this.fillColor, this.hintStyle, this.prefixIcon, this.contentPadding, this.suffixIcon, this.borderSide, this.validator, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 30,
      ),
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: TextFormField(
        controller: controller,
        style: style,
        keyboardType: inputType,
        validator: validator,
        obscureText: isPass == null ? false : isPass,
        cursorColor: Colors.black,
        cursorHeight: 20,
        decoration: InputDecoration(
          fillColor: fillColor,
          filled: true,
          hintText: hintText == null ? '' : hintText,
          hintStyle: hintStyle == null ? CommonStyle.textSize_12.copyWith(color: CommonStyle.colorGreyText) : hintStyle,
          focusColor: Colors.black,
          prefixIcon: prefixIcon == null ? null : prefixIcon,
          contentPadding: contentPadding == null ? EdgeInsets.symmetric(vertical: 10, horizontal: 10) : contentPadding,
          suffixIcon: suffixIcon == null ? null : suffixIcon,
          errorMaxLines: 3,
          errorBorder: _borderInput(CommonStyle.redColor),
          errorStyle: CommonStyle.textSize_12.copyWith(color: CommonStyle.redColor),
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)), borderSide: borderSide == null ? BorderSide.none : borderSide),
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
