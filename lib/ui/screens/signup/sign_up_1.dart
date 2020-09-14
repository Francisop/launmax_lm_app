import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../widgets/app_dropdown.dart';
import '../../widgets/app_raised_button.dart';
import '../../widgets/app_text_field.dart';

class SignUp1 extends StatefulWidget {
  @override
  _SignUp1State createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  final formKey = GlobalKey<FormState>();
  var _genders = [
    'Select Gender',
    'Male',
    'Female',
  ];

  String _currentGender = 'Select Gender';

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
                    'Sign up',
                    style: headlineStyle,
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    'Let’s personalize your experience. Kindly complete the form below to get started.',
                    style: descriptionStyle,
                  ),
                  SizedBox(height: 30.0),
                  AppTextField(
                    controller: TextEditingController(),
                    keyboardType: TextInputType.text,
                    label: 'First Name',
                    hintText: 'John',
                  ),
                  SizedBox(height: 20.0),
                  AppTextField(
                    controller: TextEditingController(),
                    keyboardType: TextInputType.text,
                    label: 'Last Name',
                    hintText: 'Doe',
                    obscureText: true,
                  ),
                  SizedBox(height: 20.0),
                  AppTextField(
                    controller: TextEditingController(),
                    keyboardType: TextInputType.text,
                    label: 'Mobile Phone',
                    hintText: '+234',
                    obscureText: true,
                  ),
                  SizedBox(height: 20.0),
                  AppDropdown(
                    text: 'Gender',
                    items: _genders,
                    value: _currentGender,
                    onChanged: (value) {
                      _currentGender = value;
                    },
                  ),
                  SizedBox(height: 20.0),
                  AppRaisedButton(
                    text: 'Next',
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
