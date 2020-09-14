import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:launmax_lm_app/ui/styles.dart';

import 'styles.dart';

class Constants {}

const kGoogleApiKey = "AIzaSyA915iZ2FyNAYmv-xvwPa1FTMIPlSxKVyc";
final String kSFProDisplay = 'SFProDisplay';
final String kSFProText = 'SFProText';

BoxShadow kDropShadow(double dx, double dy, double blurRadius,
        {color = AppColor.offset}) =>
    BoxShadow(
      offset: Offset(dx, dy),
      blurRadius: blurRadius,
      color: color,
    );

final kRoundedRectangleBorder = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(5),
);

final kRoundedTopRectangleBorder = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(34),
    topRight: Radius.circular(34),
  ),
);

final kBoxShadow = <BoxShadow>[
  BoxShadow(
    offset: Offset(0, 16),
    blurRadius: 16,
    color: Colors.black26,
  )
];

final headlineStyle = TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.w600,
  color: AppColor.neutralBlack,
);

final descriptionStyle = TextStyle(
  fontSize: 17.0,
  fontWeight: FontWeight.w300,
  color: AppColor.text2,
);

final buttonTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w300,
  color: AppColor.primaryColor,
);
