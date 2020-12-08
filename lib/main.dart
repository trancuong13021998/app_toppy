import 'package:app_toppy/generated/assets.dart';
import 'package:app_toppy/screens/home/home.dart';
import 'package:app_toppy/screens/login/login.dart';
import 'package:app_toppy/screens/notification/notification.dart';
import 'package:app_toppy/style/common-style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'style/common-style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        unselectedWidgetColor: CommonStyle.colorWhite,
        fontFamily: 'SemiBold',
      ),
      home: Login(),
    );
  }
}


