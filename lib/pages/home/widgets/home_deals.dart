import 'package:flutter/material.dart';

class HomeDeals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 100.0,
          margin: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 15.0,
          ),
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
          child: Row(
            children: <Widget>[
              _image(),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Chanel Coco Noir",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Text(
                    "€ 99.50",
                    style: TextStyle(
                      color: const Color(0xff509B56),
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        _offer(),
      ],
    );
  }

  _image() {
    return Container(
      width: 80,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        // color: const Color(0xff59A05E),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff83B256),
            Color(0xff418D4F),
          ],
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(
        child: Image.asset(
          "assets/01.png",
          height: 50,
        ),
      ),
    );
  }

  _offer() {
    return Positioned(
      bottom: 15,
      right: 20,
      child: Container(
        width: 65.0,
        height: 45.0,
        decoration: BoxDecoration(
          color: const Color(0xffFFB77D),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
          ),
          border: Border.all(
            width: 1,
            color: const Color(0xffFFE4CF),
          ),
        ),
        child: Center(
          child: Text(
            "-20%",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
