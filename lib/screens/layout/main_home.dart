import 'package:app_toppy/screens/change_password/change_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../generated/assets.dart';
import '../../style/common-style.dart';
import '../home/home.dart';
import '../notification/notification.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonStyle.colorBackground,
      body: _buildTabBody(context, _selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: CommonStyle.colorNavigationBottom,
        selectedItemColor: CommonStyle.colorSelectItemNavigation,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        items: <BottomNavigationBarItem>[
          buildBottomNavigationBarItem(context, Assets.iconsIcHome, 'Home'),
          buildBottomNavigationBarItem(context, Assets.iconsIcSearch, 'Search'),
          buildBottomNavigationBarItem(context, Assets.iconsIcNotification, 'Notification'),
          buildBottomNavigationBarItem(context, Assets.iconsIcMyPage, 'My page'),
        ],
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(BuildContext context, String iconURL, String titleKey) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: SvgPicture.asset(iconURL, color: CommonStyle.colorGrey),
      ),
      activeIcon: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: SvgPicture.asset(iconURL, color: CommonStyle.colorSelectItemNavigation),
      ),
      label: 'Home',
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildTabBody(context, index) {
    switch (index) {
      case 0:
        return HomePage();
      case 1:
        return HomePage();
      case 2:
        return ChangePassWord();
      case 3:
        return NotificationPage();
    }
    return SizedBox();
  }
}