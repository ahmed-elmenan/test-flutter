import 'package:flutter/material.dart';
import 'package:pep/core/theme/global_theme.dart';
import 'package:pep/core/utils/order_items_price_addition.dart';
import 'package:pep/features/orders/data/models/order_item_model.dart';

class TotalPrice extends StatefulWidget {
  final List<OrderItemModel> orderItems;
  const TotalPrice({Key? key, required this.orderItems}) : super(key: key);

  @override
  State<TotalPrice> createState() => _TotalPriceState();
}

class _TotalPriceState extends State<TotalPrice> {
  late List<String> totalPrice;
  late String currency;

  @override
  void initState() {
    // TODO: implement initState
    totalPrice = orderItemsPriceAddition(widget.orderItems);
    currency = widget.orderItems[0].currency;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
      children: [
        TextSpan(
            text: totalPrice[0],
            style: TextStyle(color: GlobalTheme.cardPrimaryColor)),
        TextSpan(
          text: ",${totalPrice[1]} $currency",
          style: TextStyle(
            color: GlobalTheme.cardSecondaryColor,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    ));
  }
}
