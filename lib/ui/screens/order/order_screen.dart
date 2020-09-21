import 'package:flutter/material.dart';
import 'package:launmax_lm_app/ui/res.dart';

import '../../widgets/app_app_bar.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final List<Tab> myTabs = <Tab>[
    Tab(
      child: Text(
        'PENDING',
        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
      ),
    ),
    Tab(
      child: Text(
        'COMPLETED',
        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
      ),
    ),
    Tab(
      child: Text(
        'UNCOMPLETED',
        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: buildAppBarWithBack(
          title: 'Orders',
          onBackPressed: () {
            Navigator.of(context).pop();
          },
          bottom: TabBar(
            unselectedLabelColor: Color(0xff999999),
            isScrollable: true,
            indicatorPadding: EdgeInsets.only(left: 5),
            indicatorWeight: 3,
            labelStyle: TextStyle(fontSize: 100),
            labelColor: Color(0xff135A59),
            indicatorColor: Color(0xff135A59),
            tabs: myTabs,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: TabBarView(
            children: [
              ListView(
                children: [
                  MyCards(
                    items: ["Agbada", "Buba", "Sokoto"],
                    value: 1000,
                    orderNo: "Order No1947034",
                    quantity: 2,
                    tap: null,
                    status: "pending",
                  ),
                
                  SizedBox(
                    height: 26,
                  ),
                ],
              ),
              ListView(
                children: [
                  MyCards(
                    items: ["Agbada", "Buba", "Sokoto"],
                    value: 1000,
                    orderNo: "Order No1947034",
                    quantity: 2,
                    tap: null,
                    status: "pending",
                  ),
                
                  SizedBox(
                    height: 26,
                  ),
                ],
              ),
              ListView(
                children: [
                  MyCards(
                    items: ["Agbada", "Buba", "Sokoto"],
                    value: 1000,
                    orderNo: "Order No1947034",
                    quantity: 2,
                    tap: null,
                    status: "pending",
                  ),
                
                  SizedBox(
                    height: 26,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCards extends StatelessWidget {
  final String status;
  final String orderNo;
  final int value;
  final int quantity;
  final List items;
  final Function tap;
  const MyCards({
    Key key,
    this.value,
    this.orderNo,
    this.quantity,
    this.items,
    this.status,
    this.tap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: tap,
      child: Card(
          elevation: 9.9,
          color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(children: [
            Container(
                child: Row(
              children: [
                Container(
                  child: Row(children: [
                    Icon(Icons.timer),
                    Text(status.toUpperCase()),
                  ]),
                ),
                Container(
                  child: Text("sep 06, 2020 03:36 PM"),
                )
              ],
            )),
            Divider(),
            Container(
              child: Column(children: [
                Container(child: Text(orderNo)),
                Container(
                  child: Row(
                    children: [
                      Text('item'),
                      Text(items.toString()),
                    ],
                  ),
                )
              ]),
            ),
            Divider(),
            Container(
              child: Row(children: [
                Text('VALUE OF ITEMS'),
                Text('NGN $value'),
                Text('QUANTITY'),
                Text(quantity.toString()),
              ]),
            ),
          ])),
    );
  }
}


// Theme.of(context).accentColor