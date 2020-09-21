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
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal:14,vertical: 22),
            child: Column(children: [
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(children: [
                      Icon(Icons.timer),
                      SizedBox(width: 10),
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
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(orderNo,
                        style: TextStyle(color: Theme.of(context).primaryColor)),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text('item'),
                        SizedBox(width: 10),
                        Text(items.fold(" ", (v, e) => "$v" + " $e"),
                            style: TextStyle(
                                color: Theme.of(context).primaryColorLight)),
                      ],
                    ),
                  )
                ]),
              ),
              Divider(),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Row(
                        children: [
                          Text('VALUE OF ITEMS'),
                          Text(
                            '  NGN $value',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 12),
                          ),
                        ],
                      )),
                      Container(
                          child: Row(
                        children: [
                          Text('QUANTITY'),
                          Text(
                            quantity.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 12),
                          ),
                        ],
                      )),
                    ]),
              ),
            ]),
          )),
    );
  }
}

// Theme.of(context).accentColor
