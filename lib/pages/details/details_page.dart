import 'package:flutter/material.dart';
import 'package:flutter_challenge/pages/details/widgets/details_add_cart.dart';
import 'package:flutter_challenge/pages/details/widgets/details_app_bar.dart';
import 'package:flutter_challenge/pages/details/widgets/details_highlight.dart';
import 'package:flutter_challenge/pages/details/widgets/details_info.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        // fit: StackFit.expand,
        children: <Widget>[
          DetailsHightlight(),
          DetailsInfo(),
          DetailsAppBar(),
        ],
      ),
      bottomSheet: DetailsAddCart(),
    );
  }
}
