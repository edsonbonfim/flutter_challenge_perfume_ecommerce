import 'package:flutter/material.dart';

class HomeSideMenu extends StatelessWidget {
  final _items = [
    "Suggested",
    "Popular",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _items.map<Widget>((text) => _item(text)).toList(),
    );
  }

  Widget _item(String text) {
    var active = text[0] == 'S';

    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Row(
        children: <Widget>[
          RotatedBox(
            quarterTurns: 3,
            child: Text(
              text.toUpperCase(),
              style: TextStyle(
                height: 1,
                fontWeight: FontWeight.w600,
                color:
                    active ? const Color(0xff509B56) : const Color(0xffCAC8C9),
              ),
            ),
          ),
          active
              ? Container(
                  width: 6,
                  height: 6,
                  margin: const EdgeInsets.only(left: 6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: const Color(0xff509B56),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
