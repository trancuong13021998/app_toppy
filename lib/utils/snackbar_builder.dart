import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import '../style/common-style.dart';

class SnackBarBuilder {
  static void snackBarNotification(BuildContext context, String message, Color backgroundColor, Color textColor, {Widget iconWidget}) async {
    var flushBar = Flushbar(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      maxWidth: MediaQuery.of(context).size.width * 0.5,
      blockBackgroundInteraction: false,
      padding: EdgeInsets.all(15),
      borderRadius: 15,
      messageText: Text(
        message,
        textAlign: TextAlign.center,
        style: CommonStyle.textSize_12.copyWith(color: textColor, fontWeight: FontWeight.bold),
      ),
      icon: iconWidget == null ? null : iconWidget,
      duration: Duration(seconds: 2),
      isDismissible: false,
      backgroundColor: backgroundColor,
    );
     flushBar
      ..show(context).then((value) => flushBar.dismiss());
  }

}
