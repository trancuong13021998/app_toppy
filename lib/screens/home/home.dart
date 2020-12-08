
import 'package:app_toppy/screens/home/item_home.dart';
import 'package:app_toppy/style/common-style.dart';
import 'package:app_toppy/utils/custom_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonStyle.colorBackground,
      appBar: AppBar(title: Center(child: new Text('Home', textAlign: TextAlign.center)),
      ),
      body:CommonScrollView(
        child: Column(
          children: [
            SizedBox(height: 5),
            ItemHome(CommonStyle.colorPink),
            SizedBox(height: 8),
            ItemHome(CommonStyle.colorBlue),
            SizedBox(height: 8),
            ItemHome(CommonStyle.colorWhite),
            SizedBox(height: 8),
            ItemHome(CommonStyle.colorWhite),
            SizedBox(height: 8),
            ItemHome(CommonStyle.colorWhite),
            SizedBox(height: 80),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
