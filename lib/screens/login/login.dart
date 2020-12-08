import 'package:app_toppy/screens/change_password/change_password.dart';
import 'package:app_toppy/screens/layout/main_home.dart';
import 'package:app_toppy/utils/dialog_builder.dart';
import 'package:app_toppy/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../style/common-style.dart';
import '../../style/common-style.dart';
import '../../utils/custom_scroll_view.dart';
import '../home/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int numOnTap = 0;
  bool visiblePass = true;
  var iconVisiblePass = Icons.visibility_off_outlined;
  TextEditingController userIdEditController = new TextEditingController();
  TextEditingController passEditController = new TextEditingController();
  bool rememberCheckBox = false;
  final _formLogin = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          color: CommonStyle.colorSelectItemNavigation,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Sign In',
                style: TextStyle(
                  color: CommonStyle.colorWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  fontFamily: 'SemiBold',
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Enjoy our application',
                style: TextStyle(
                  color: CommonStyle.colorWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  fontFamily: 'Regular',
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              Form(
                key: _formLogin,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    buildEditText('User Id', false, TextInputType.name, Icons.person, validateUserId, userIdEditController),
                    SizedBox(
                      height: 25,
                    ),
                    buildEditText('Password', true, TextInputType.visiblePassword, Icons.lock, validatePass, passEditController),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 15),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        color: CommonStyle.colorWhite,
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.all(
                          Radius.circular(3),
                        ),
                      ),
                      child: Checkbox(
                        tristate: false,
                        checkColor: CommonStyle.darkBlueColor,
                        activeColor: Colors.transparent,
                        onChanged: (bool value) {
                          setState(() {
                            rememberCheckBox = value;
                          });
                        },
                        value: rememberCheckBox,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Remember password',
                      style: CommonStyle.textBoldSize_14.copyWith(color: CommonStyle.colorWhite, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CustomButton(
                height: 50.0,
                width: MediaQuery.of(context).size.width * 0.5,
                colorButton: CommonStyle.darkBlueColor,
                onTap: () {
                  if (_formLogin.currentState.validate()) {
                    DialogBuilder.showMyDialogLoading(context, 'Login Loading', CommonStyle.colorWhite).then((value) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    });
                  }
                },
                child: Text(
                  'Sign In',
                  style: CommonStyle.textBoldSize_16.copyWith(color: CommonStyle.colorWhite, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildEditText(String hinText, bool isIcon, TextInputType textInputType, IconData icon, String Function(String) validator, TextEditingController controller) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 30,
      ),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 5),
      alignment: Alignment.center,
      child: TextFormField(
        keyboardType: textInputType,
        style: CommonStyle.textSize_16,
        textInputAction: TextInputAction.done,
        obscureText: isIcon == false ? false : visiblePass,
        validator: validator,
        decoration: InputDecoration(
          fillColor: CommonStyle.colorWhite,
          filled: true,
          hintText: hinText,
          hintStyle: CommonStyle.hintTextSize14,
          focusColor: Colors.black,
          prefixIcon: Icon(
            icon,
            size: 22,
            color: CommonStyle.colorSelectItemNavigation,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          suffixIcon: isIcon == false ? null : buildInkWell(),
          errorMaxLines: 3,
          errorBorder: _borderInput(CommonStyle.redColor),
          focusedBorder: _borderInput(CommonStyle.colorSelectItemNavigation),
          errorStyle: CommonStyle.textSize_12.copyWith(color: CommonStyle.redColor),
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)), borderSide: BorderSide.none),
        ),
      ),
    );
  }

  InkWell buildInkWell() {
    return InkWell(
      onTap: () {
        setState(() {
          numOnTap++;
          if (numOnTap % 2 == 0) {
            iconVisiblePass = Icons.visibility_off_outlined;
            visiblePass = true;
          } else {
            iconVisiblePass = Icons.visibility;
            visiblePass = false;
          }
        });
      },
      child: Padding(
        padding: EdgeInsets.only(left: 5),
        child: Icon(
          iconVisiblePass,
          size: 20,
          color: Colors.black,
        ),
      ),
    );
  }

  Function(String) validatePass = (String value) {
    String pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    if (value.length < 8) {
      return 'Password must be 8 characters or more';
    } else if (!regExp.hasMatch(value)) {
      return 'Password includes uppercase, lowercase letters, and special characters';
    } else if (value.isEmpty) {
      return 'Password is empty';
    } else {
      return null;
    }
  };

  Function(String) validateUserId = (String value) {
    if (value.isEmpty) {
      return 'User ID is empty';
    } else {
      return null;
    }
  };

  OutlineInputBorder _borderInput(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(width: 1, color: color),
    );
  }
}
