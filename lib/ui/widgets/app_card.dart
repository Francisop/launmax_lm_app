import 'package:flutter/material.dart';
import 'package:launmax_lm_app/ui/constant.dart';




class AppCard extends StatelessWidget {
  final Color color;
  final child;
  final double radius;
  final blurRadius;
  final Border border;
  final List<BoxShadow> boxShadow;

  const AppCard(
      {Key key,
      this.color = Colors.white,
      this.child,
      this.radius = 16.0,
      this.blurRadius = 16.0,
      this.boxShadow,
      this.border})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: border,
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        boxShadow: boxShadow ?? [kDropShadow(0, blurRadius, blurRadius)],
      ),
      child: child,
    );
  }
}
