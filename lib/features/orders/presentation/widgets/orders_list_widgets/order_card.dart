import 'package:flutter/material.dart';
import 'package:pep/core/theme/global_style.dart';
import 'package:pep/core/theme/global_theme.dart';
import 'package:pep/features/orders/domain/entities/order_info.dart';
import 'package:pep/features/orders/presentation/pages/order_details_page.dart';

import 'card_table.dart';
import '../../../../../core/widgets/total_price.dart';
import 'orders_card_guests_and_date.dart';

class OrderCard extends StatelessWidget {
  final OrderInfo orderInfo;
  const OrderCard({Key? key, required this.orderInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _navigateToOrderDetailsPage(context),
      child: Container(
        height: 90,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        padding: EdgeInsets.only(right: 10),
        decoration: GlobalStyle.cardStyle(GlobalTheme.secondaryBackgroundColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TableCard(table: orderInfo.table),
            Expanded(
                flex: 2,
                child: OrdersCardGuestsAndDate(
                  guests: orderInfo.guests,
                  date: orderInfo.date.isNotEmpty ? orderInfo.date : "18:00",
                )),
            TotalPrice(orderItems: orderInfo.items,
            primaryColor: GlobalTheme.cardPrimaryColor,
            secondaryColor: GlobalTheme.cardSecondaryColor,
            )
          ],
        ),
      ),
    );
  }

   _navigateToOrderDetailsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderDetailsPage(orderInfo: orderInfo)));
  }
}
