import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../styles.dart';
import '../../widgets/app_raised_button.dart';
import '../../widgets/app_text_field.dart';

class SignUp2 extends StatefulWidget {
  @override
  _SignUp2State createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
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
                    'Sign up',
                    style: headlineStyle,
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    'Hi John',
                    style: descriptionStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColor.neutralBlack,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    'Setup your laundry business profile to create your account.',
                    style: descriptionStyle,
                  ),
                  SizedBox(height: 20.0),
                  GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child: Image.asset('assets/images/avatar_pic.png'),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              radius: 15,
                              child: Icon(
                                Icons.camera_alt,
                                color: AppColor.background,
                                size: 20,
                              ),
                              backgroundColor: AppColor.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Center(
                    child: Text(
                      'Upload Business Logo',
                      style: smallTitleTextStyle,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  AppTextField(
                    controller: TextEditingController(),
                    keyboardType: TextInputType.text,
                    label: 'Business Name',
                    hintText: 'Business name',
                  ),
                  SizedBox(height: 20.0),
                  AppTextField(
                    controller: TextEditingController(),
                    keyboardType: TextInputType.text,
                    label: 'Business Address',
                    hintText: 'Enter your business address...',
                  ),
                  SizedBox(height: 20.0),
                  AppTextField(
                    controller: TextEditingController(),
                    keyboardType: TextInputType.text,
                    label: 'Email address',
                    hintText: 'emily@example.com',
                  ),
                  SizedBox(height: 20.0),
                  AppTextField(
                    controller: TextEditingController(),
                    keyboardType: TextInputType.text,
                    label: 'Password',
                    hintText: 'Password',
                    obscureText: true,
                  ),
                  SizedBox(height: 20.0),
                  AppRaisedButton(
                    text: 'Create Account',
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
