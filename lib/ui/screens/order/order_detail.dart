import 'package:flutter/material.dart';

import '../../widgets/app_app_bar.dart';

class OrderDetail extends StatefulWidget {
  @override
  _OrderDetailState createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBarWithBack(title: "Order Details"),
    
    body: SingleChildScrollView(
      child: Card(
        
      ),
    ),
    
    );
  }
}
