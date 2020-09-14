import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../widgets/app_raised_button.dart';
import '../../widgets/app_text_field.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          child: Icon(
            Icons.close,
            color: Colors.black,
          ),
          onTap: () {},
        ),
        actions: [
          FlatButton(
            child: Text(
              'Sign in',
              style: buttonTextStyle,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.0),
                  Text(
                    'Reset Password',
                    style: headlineStyle,
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    'Enter your old password connected to your account below to change your password.',
                    style: descriptionStyle,
                  ),
                  SizedBox(height: 20.0),
                  AppTextField(
                    controller: TextEditingController(),
                    keyboardType: TextInputType.text,
                    label: 'Old Password',
                    hintText: '**********',
                    obscureText: true,
                  ),
                  SizedBox(height: 20.0),
                  AppTextField(
                    controller: TextEditingController(),
                    keyboardType: TextInputType.text,
                    label: 'New Password',
                    hintText: '**********',
                    obscureText: true,
                  ),
                  SizedBox(height: 20.0),
                  AppRaisedButton(
                    text: 'Change Password',
                    onPressed: () {
                      formKey.currentState.validate();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
