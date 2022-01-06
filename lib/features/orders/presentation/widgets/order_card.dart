import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pep/core/theme/global_style.dart';
import 'package:pep/core/theme/global_theme.dart';
import 'package:pep/features/orders/presentation/widgets/orders_card_guests_and_date.dart';

import 'card_table.dart';
import 'order_card_total_price.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: EdgeInsets.only(right: 10),
      decoration: GlobalStyle.cardStyle(GlobalTheme.secondaryBackgroundColor),
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(flex: 1, child: TableCard()),
          Expanded(
            flex: 2,
            child: OrdersCardGuestsAndDate()
          ),
         TotalPrice()
        ],
      ),
    );
  }
}
