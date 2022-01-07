import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pep/core/theme/global_style.dart';
import 'package:pep/core/theme/global_theme.dart';

class OrdersCardGuestsAndDate extends StatelessWidget {
  final int guests;
  final String date;
  const OrdersCardGuestsAndDate(
      {Key? key, required this.guests, required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              FaIcon(FontAwesomeIcons.smile,
                  color: GlobalTheme.cardPrimaryColor),
              SizedBox(
                width: 5,
              ),
              Text(guests.toString(),
                  style: GlobalStyle.orderCardGuestsandDateStyle),
            ],
          ),
          Text(date, style: GlobalStyle.orderCardGuestsandDateStyle)
        ],
      ),
    );
  }
}
