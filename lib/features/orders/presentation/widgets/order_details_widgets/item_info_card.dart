import 'package:flutter/material.dart';
import 'package:pep/core/theme/global_style.dart';
import 'package:pep/core/theme/global_theme.dart';
import 'package:pep/features/orders/domain/entities/order_item.dart';
import 'package:string_to_hex/string_to_hex.dart';

import 'item_card_text.dart';

class itemInfoCard extends StatelessWidget {
  final OrderItem orderItem;
  const itemInfoCard({Key? key, required this.orderItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: 35,
            color: Color(GlobalTheme.convertStringHexToColor(orderItem.color)),
            child: Center(child: Text("1")),
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
