import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../styles.dart';
import '../../widgets/app_raised_button.dart';
import '../../widgets/app_text_field.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
              'Sign up',
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
                    'Sign in',
                    style: headlineStyle,
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    'Welcome Back!',
                    style: descriptionStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColor.neutralBlack,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  AppRaisedButton(
                    text: 'Sign in with Google',
                    textColor: Colors.black54,
                    prefixIcon: Image.asset(
                      'assets/images/googlelogo.png',
                      width: 24,
                    ),
                    onPressed: () {},
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(height: 15.0),
                  AppRaisedButton(
                    text: 'Sign in with Apple',
                    textColor: Colors.black54,
                    prefixIcon: Image.asset(
                      'assets/images/apple.png',
                      width: 24,
                    ),
                    onPressed: () {},
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: [
                      Expanded(child: Divider()),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'or',
                          style: smallTextStyle,
                        ),
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Fill in your email and password to log in.',
                    style: descriptionStyle,
                  ),
                  SizedBox(height: 20.0),
                  AppTextField(
                    controller: TextEditingController(),
                    keyboardType: TextInputType.text,
                    label: 'Email Address',
                    hintText: 'john@example.com',
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
                    text: 'Login',
                    onPressed: () {
                      formKey.currentState.validate();
                    },
                  ),
                  SizedBox(height: 5.0),
                  Center(
                    child: FlatButton(
                      child: Text(
                        'Reset Password',
                        style: descriptionStyle.copyWith(
                          color: AppColor.neutralBlack,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
