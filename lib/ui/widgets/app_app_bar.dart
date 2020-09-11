import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:launmax_lm_app/ui/constant.dart';



/// This was created because Cupertino App bar is shorter on Android
AppBar buildAppBarWithBack({
  String title,
  VoidCallback onBackPressed,
  Widget bottom,
  Widget trailing,
}) {
  return AppBar(
    centerTitle: true,
    automaticallyImplyLeading: false,
    bottom: bottom,
    title: Stack(
      children: [
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 17,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CupertinoButton(
              padding: EdgeInsets.all(0),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.back,
                    size: 20,
                    color: Colors.black,
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    'Back',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: kSFProText),
                  ),
                ],
              ),
              onPressed: onBackPressed,
            ),
            trailing ?? SizedBox.shrink()
          ],
        ),
      ],
    ),
  );
}
