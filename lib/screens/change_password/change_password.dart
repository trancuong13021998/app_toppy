import 'package:app_toppy/utils/snackbar_builder.dart';
import 'package:app_toppy/widgets/custom_button.dart';
import 'package:app_toppy/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../style/common-style.dart';
import '../../utils/custom_scroll_view.dart';

// ignore: must_be_immutable
class ChangePassWord extends StatelessWidget {
  final _formChangePass = GlobalKey<FormState>();
  final TextEditingController oldPassController = new TextEditingController();
  final TextEditingController newPassController = new TextEditingController();
  final TextEditingController confirmPassController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Navigator.of(context).pop(true);
          },
          child: Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      body: CommonScrollView(
        child: Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05, left: 25, right: 25),
          child: Form(
            key: _formChangePass,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Change password',
                    style: CommonStyle.textSize22.copyWith(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                itemTitle('Password:'),
                CustomTextField(
                  controller: oldPassController,
                  hintText: 'Enter password',
                  isPass: true,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Password is empty';
                    } else {
                      return null;
                    }
                  },
                  style: CommonStyle.hintTextSize14.copyWith(color: CommonStyle.colorBlackText),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  fillColor: CommonStyle.colorWhite,
                ),
                SizedBox(
                  height: 25,
                ),
                itemTitle('New password:'),
                CustomTextField(
                  controller: newPassController,
                  hintText: 'Enter new password',
                  isPass: true,
                  validator: validatePass,
                  style: CommonStyle.hintTextSize14.copyWith(color: CommonStyle.colorBlackText),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  fillColor: CommonStyle.colorWhite,
                ),
                SizedBox(
                  height: 25,
                ),
                itemTitle('Confirm new password:'),
                CustomTextField(
                  controller: confirmPassController,
                  hintText: 'Confirm new password',
                  isPass: true,
                  validator: validatePass,
                  style: CommonStyle.hintTextSize14.copyWith(color: CommonStyle.colorBlackText),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  fillColor: CommonStyle.colorWhite,
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: CustomButton(
                          onTap: () {
                            if (_formChangePass.currentState.validate()) {
                              if (newPassController.text == confirmPassController.text) {
                                SnackBarBuilder.snackBarNotification(
                                  context,
                                  'Change password success',
                                  CommonStyle.colorSelectItemNavigation,
                                  CommonStyle.colorWhite,
                                );
                              } else {
                                SnackBarBuilder.snackBarNotification(
                                  context,
                                  'Confirm pass must be the same as the new pass',
                                  CommonStyle.colorSelectItemNavigation,
                                  CommonStyle.colorWhite,
                                );
                              }
                            }
                          },
                          height: 45.0,
                          colorButton: CommonStyle.colorSelectItemNavigation,
                          child: Text(
                            'Change',
                            style: CommonStyle.textBoldSize_16.copyWith(color: CommonStyle.colorWhite),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: CustomButton(
                          onTap: () {},
                          height: 45.0,
                          colorButton: CommonStyle.redColor,
                          child: Text(
                            'Cancel',
                            style: CommonStyle.textBoldSize_16.copyWith(color: CommonStyle.colorWhite),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget itemTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(left: 10, bottom: 10),
      child: Text(
        title,
        style: CommonStyle.textBoldSize_14.copyWith(color: Colors.black, fontWeight: FontWeight.w500),
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
}
