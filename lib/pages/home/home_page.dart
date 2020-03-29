import 'package:flutter/material.dart';
import 'package:flutter_challenge/pages/home/widgets/home_app_bar.dart';
import 'package:flutter_challenge/pages/home/widgets/home_cards.dart';
import 'package:flutter_challenge/pages/home/widgets/home_chips.dart';
import 'package:flutter_challenge/pages/home/widgets/home_deals.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListView(
        padding: const EdgeInsets.only(
          bottom: 15,
        ),
        children: <Widget>[
          HomeAppBar(),
          _title(),
          HomeChips(),
          HomeCards(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _details(),
              _all(),
            ],
          ),
          HomeDeals(),
        ],
      ),
    );
  }

  Widget _title() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 17,
        vertical: 10,
      ),
      child: Text(
        "Perfume",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: const Color(0xff0C0C0C),
        ),
      ),
    );
  }

  Widget _details() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 17,
        vertical: 10,
      ),
      child: Text(
        "Best deals",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: const Color(0xff0C0C0C),
        ),
      ),
    );
  }

  Widget _all() {
    return Container(
      margin: const EdgeInsets.only(right: 20.0),
      child: Row(
        children: <Widget>[
          Text(
            "ALL",
            style: TextStyle(
              color: const Color(0xffC9C9C9),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 5),
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 1,
                color: const Color(0xffC9C9C9),
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xffEAEAEA),
                  blurRadius: 1,
                ),
              ],
            ),
            child: Center(
              child: Icon(
                Icons.chevron_right,
                color: const Color(0xffC9C9C9),
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
