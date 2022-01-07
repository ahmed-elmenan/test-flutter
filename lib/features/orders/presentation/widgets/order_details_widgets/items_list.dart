import 'package:flutter/material.dart';
import 'package:pep/features/orders/domain/entities/order_info.dart';
import 'package:pep/features/orders/domain/entities/order_item.dart';

class ItemsList extends StatelessWidget {
  final List<OrderItem> orderItemsList;
  const ItemsList({Key? key, required this.orderItemsList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: orderItemsList.length,
          itemBuilder: (context, index) {
            return Text(orderItemsList[index].name);
          }),
    );
  }
}
