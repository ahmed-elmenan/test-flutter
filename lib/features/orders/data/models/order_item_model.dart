import 'package:equatable/equatable.dart';
import 'package:pep/features/orders/domain/entities/order_item.dart';

class OrderItemModel extends OrderItem {
  OrderItemModel(
      {required String object,
      required int id,
      required String name,
      required double price,
      required String currency,
      required String color})
      : super(
            object: object,
            id: id,
            name: name,
            price: price,
            currency: currency,
            color: color);
}
