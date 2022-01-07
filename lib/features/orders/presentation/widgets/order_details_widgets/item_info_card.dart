import 'package:flutter/material.dart';
import 'package:pep/core/theme/global_theme.dart';
import 'package:pep/features/orders/domain/entities/order_item.dart';

import 'item_card_text.dart';

class ItemInfoCard extends StatelessWidget {
  final OrderItem orderItem;
  const ItemInfoCard({Key? key, required this.orderItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: 35,
            color: Color(GlobalTheme.convertStringHexToColor(orderItem.color)),
            child: Center(
                child: Text("1", // I didn't find the item quantites in the end-points data so I give it 1
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold))),
          ),
          ItemCardText(
            text: orderItem.name,
            color: orderItem.color,
          ),
          ItemCardText(
            text: orderItem.price.toString() + orderItem.currency,
            color: orderItem.color,
          )
        ],
      ),
    );
  }
}
