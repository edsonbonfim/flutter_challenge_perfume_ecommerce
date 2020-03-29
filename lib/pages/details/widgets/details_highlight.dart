import 'package:flutter/material.dart';

class DetailsHightlight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff83B256),
            Color(0xff418D4F),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/01.png",
            height: 300,
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _mark(width: 15.0),
              _mark(),
              _mark(),
              _mark(),
            ],
          ),
          SizedBox(height: 200),
        ],
      ),
    );
  }

  Widget _mark({double width = 6.0}) {
    return Container(
      width: width,
      height: 6.0,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(6.0),
      ),
    );
  }
}
