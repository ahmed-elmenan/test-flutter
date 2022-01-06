import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrdersCardGuestsAndDate extends StatelessWidget {
   OrdersCardGuestsAndDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Row(
            children: const [
              FaIcon(FontAwesomeIcons.smile),
              SizedBox(
                width: 5,
              ),
              Text("3"),
            ],
          ),
          Text("date")
        ],
      ),
    );
  }
}
