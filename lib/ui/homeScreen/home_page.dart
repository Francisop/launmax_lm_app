import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:launmax_lm_app/ui/screens/viewPricing.dart';
import 'package:launmax_lm_app/ui/widgets/app_card.dart';

import '../styles.dart';

final user = "John";

class HomePage extends StatelessWidget {
  static Widget appBar() {
    return AppBar(
      bottom: buildBottomComponent(),
      elevation: 1,
      centerTitle: false,
      title: Text(
        'Eko Laundry',
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w300,
            color: Color(0xFFA7A7A7)),
      ),
    );
  }

  static buildBottomComponent() {
    return PreferredSize(
      preferredSize: Size.fromHeight(40),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(17, 0, 14, 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Hi John',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColor.neutralBlack,
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/images/fakeavatar.png'),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 25,
        ),
        Padding(
         padding: EdgeInsets.symmetric(vertical: 0, horizontal: 17),
          child: EarningCard(
            text: "Total Earnings",
            subtext: "₦2,000,000",
            onTap: () {},
          ),
        ),
        SizedBox(
          height: 12,
        ),
        GridView.count(
          physics: ScrollPhysics(), // to disable GridView's scrolling
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 17),
          mainAxisSpacing: 50,
          crossAxisSpacing: 28,
          crossAxisCount: 2,
          children: [
            HomePageCard(
              text: "Orders",
              iconPath: 'assets/images/delivery2.svg',
              onTap: () {},
            ),
            HomePageCard(
              text: "Deliveries",
              iconPath: 'assets/images/delivery.svg',
              onTap: () {},
            ),
            HomePageCard(
              text: "View Pricing",
              iconPath: 'assets/images/naira.svg',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ViewPricing()));
              },
            ),
            HomePageCard(
              text: "Payment History",
              iconPath: 'assets/images/payment.svg',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class HomePageCard extends StatelessWidget {
  final String text;
  final String iconPath;
  final Color color;
  final VoidCallback onTap;
  const HomePageCard({
    Key key,
    this.text,
    this.iconPath,
    this.color,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppCard(
      radius: 16.0,
      blurRadius: 16.0,
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Material(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(iconPath),
                Text(
                  text,
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EarningCard extends StatelessWidget {
  final String text;
  final Color color;
  final String subtext;
  final VoidCallback onTap;
  const EarningCard({
    Key key,
    this.text,
    this.subtext,
    this.color,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color.fromRGBO(228, 228, 228, 0.6))
      ),
      child: AppCard(
        radius: 10.0,
        blurRadius: 6.0,
        color: Colors.white,
        child: InkWell( 
          borderRadius: BorderRadius.circular(10),
          onTap: onTap,
          child: Material(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Color(0xff181E26)),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        subtext,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 19, color: Color(0xff787676)),
                      ),
                    ],
                  ),
                 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StarDisplayWidget(
  value: 4,
  filledStar: Icon(Icons.star, color: Color(0xffFFD400), ),
  unfilledStar: Icon(Icons.star, color: Color.fromRGBO(255, 212, 0, 0.5)),
)
                    ],
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

class StarDisplayWidget extends StatelessWidget {
  final int value;
  final Widget filledStar;
  final Widget unfilledStar;  const StarDisplayWidget({
    Key key,
    this.value = 0,
    @required this.filledStar,
    @required this.unfilledStar,
  })  : assert(value != null),
        super(key: key);  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return index < value ? filledStar : unfilledStar;
      }),
    );
  }
}class StarDisplay extends StarDisplayWidget {
  const StarDisplay({Key key, int value = 0})
      : super(
          key: key,
          value: value,
          filledStar: const Icon(Icons.star),
          unfilledStar: const Icon(Icons.star_border),
        );
}
