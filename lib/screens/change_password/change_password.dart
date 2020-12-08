import 'package:app_toppy/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../style/common-style.dart';
import '../../style/common-style.dart';
import '../../style/common-style.dart';
import '../../utils/custom_scroll_view.dart';

class ChangePassWord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      appBar: AppBar(
        backgroundColor: Color(0xFFF1F1F1),
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_outlined,
          color: Colors.black,
          size: 30,
        ),
      ),
      body: CommonScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.15, horizontal: 25),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Change password',
                style: CommonStyle.textSize22.copyWith(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              CustomTextField(
                hintText: 'Enter password',
                style: CommonStyle.hintTextSize14.copyWith(color: CommonStyle.colorGrey),
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
