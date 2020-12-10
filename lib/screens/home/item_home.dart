import 'package:app_toppy/screens/change_password/change_password.dart';
import 'package:app_toppy/style/common-style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class ItemHome extends StatefulWidget {
  Color color;

  ItemHome(this.color);

  @override
  _ItemHomeState createState() => _ItemHomeState();
}

class _ItemHomeState extends State<ItemHome> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChangePassWord()),
        );
      },
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: widget.color,
            boxShadow: [CommonStyle.defaultShadow]
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset(
                      'assets/images/trump.jpg',
                      height: 75,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('No.M001'),
                      SizedBox(height: 2),
                      Text('Date: 2020/12/02'),
                      SizedBox(height: 2),
                      Text('Title: Buy Rolls royce dfsdfsdfsdfs'),
                      SizedBox(height: 2),
                      Text('Sender: Tony'),
                      SizedBox(height: 2),
                    ],
                  ),
                ],
              ),
              Text("Content: Once you'vetorial, it's time to create a new project. the ..."),
            ],
          )),
    );
  }
}
