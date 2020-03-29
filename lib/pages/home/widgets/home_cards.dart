import 'package:flutter/material.dart';
import 'package:flutter_challenge/pages/home/widgets/home_card.dart';
import 'package:flutter_challenge/pages/home/widgets/home_side_menu.dart';

class HomeCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 300.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          HomeSideMenu(),
          HomeCard(
            name: "Chanel Coco Noir",
            image: "assets/01.png",
            price: 99.50,
          ),
          HomeCard(
            name: "Orange San",
            image: "assets/02.png",
            price: 121.00,
          ),
        ],
      ),
    );
  }
}
