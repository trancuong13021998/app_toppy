import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  num height;
  num width;
  Function onTap;
  Color borderSideColor;
  Color colorButton;
  Widget child;


  CustomButton({this.height:30.0, this.width: 70.0, @required this.onTap, @required this.child, this.borderSideColor: Colors.transparent, this.colorButton: Colors.grey});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: RaisedButton(
        onPressed: onTap,
        color: colorButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
          side: BorderSide(color: borderSideColor),
        ),
        child: child,
      ),
    );
  }
}
