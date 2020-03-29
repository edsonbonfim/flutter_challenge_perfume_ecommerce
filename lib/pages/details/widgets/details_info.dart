import 'package:flutter/material.dart';

class DetailsInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Kayali Elixir 11",
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "HUDA BEAUTY",
            style: TextStyle(
              color: const Color(0xffC7C7C7),
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "€ 118.00",
                style: TextStyle(
                  color: const Color(0xff519C57),
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "48 reviews",
                    style: TextStyle(
                      color: const Color(0xffC7C7C7),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.star, color: Color(0xffFFB67F)),
                      Icon(Icons.star, color: Color(0xffFFB67F)),
                      Icon(Icons.star, color: Color(0xffFFB67F)),
                      Icon(Icons.star, color: Color(0xffFFB67F)),
                      Icon(Icons.star, color: Color(0xffFFB67F)),
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
