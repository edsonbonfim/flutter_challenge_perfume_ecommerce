import 'package:flutter/material.dart';

class HomeChips extends StatelessWidget {
  final labels = <String>[
    "Floral",
    "Warm & Spicy",
    "Another thing",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: labels.length + 1,
        itemBuilder: (context, index) {
          return index == 0 ? _filter() : _chip(labels[index - 1]);
        },
      ),
    );
  }

  _filter() {
    return Container(
      margin: const EdgeInsets.only(left: 15.0, right: 5.0),
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xff539C57),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff96C39A),
            blurRadius: 1,
          ),
        ],
        borderRadius: BorderRadius.circular(15.0),
        color: const Color(0xff59A05E),
      ),
      child: Icon(
        Icons.tune,
        color: Colors.white,
      ),
    );
  }

  _chip(String label) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffE9E9E9),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xffEAEAEA),
            blurRadius: 1,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(
        child: Text(
          label.toUpperCase(),
          style: TextStyle(
            color: const Color(0xff4C9850),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
