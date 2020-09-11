import 'package:flutter/material.dart';
import 'package:launmax_lm_app/ui/constant.dart';
import 'package:launmax_lm_app/ui/homeScreen/home_page.dart';
import 'package:launmax_lm_app/ui/homeScreen/home_screen.dart';
import 'package:launmax_lm_app/ui/screens/viewPricing.dart';
import 'package:launmax_lm_app/ui/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: 'LaunMax DryCleaner',
      theme: ThemeData(
            appBarTheme: AppBarTheme(
              color: Colors.white,
              iconTheme: IconThemeData(color: Colors.black),
              actionsIconTheme: IconThemeData(color: Colors.black),
              elevation: 1,
              brightness: Brightness.light, // status bar brightness
            ),
            primaryTextTheme: Typography.blackCupertino
                .copyWith(bodyText2: TextStyle(fontFamily: kSFProText)),
            primarySwatch: AppColor.primaryColor,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            scaffoldBackgroundColor: AppColor.background,
            textTheme: Typography.blackCupertino
                .copyWith(bodyText2: TextStyle(fontFamily: kSFProText)),
          ),
      home: HomeScreen(),
    );
  }
}

