import 'package:flutter/material.dart';
import 'package:pep/core/theme/global_theme.dart';
import 'package:pep/core/util/order_items_price_addition.dart';
import 'package:pep/features/orders/data/models/order_item_model.dart';

class TotalPrice extends StatefulWidget {
  final List<OrderItemModel> orderItems;
  final Color primaryColor;
  final Color secondaryColor;
  const TotalPrice(
      {Key? key,
      required this.orderItems,
      required this.primaryColor,
      required this.secondaryColor})
      : super(key: key);

  @override
  State<TotalPrice> createState() => _TotalPriceState();
}

class _TotalPriceState extends State<TotalPrice> {
  late List<String> totalPrice;
  late String currency;

  @override
  void initState() {
    totalPrice = orderItemsPriceAddition(widget.orderItems);
    currency = widget.orderItems[0].currency;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 26,
      ),
      children: [
        TextSpan(
            text: totalPrice[0], style: TextStyle(color: widget.primaryColor)),
        TextSpan(
          text: ",${totalPrice[1]} $currency",
          style: TextStyle(
            color: widget.secondaryColor,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    ));
  }
}
