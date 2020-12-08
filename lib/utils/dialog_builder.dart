import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/common-style.dart';

class DialogBuilder{
  static Future<void> showMyDialogLoading(
      BuildContext context,
      String content,
      Color backgroundColor
      ) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        Future.delayed(Duration(seconds: 1), () {
          Navigator.of(context).pop(true);
        });
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: backgroundColor,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              CircularProgressIndicator(),
              SizedBox(
                height: 20,
              ),
              Text(
                content,
                textAlign: TextAlign.center,
                style: CommonStyle.textSize_14,
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        );
      },
    );
  }
}