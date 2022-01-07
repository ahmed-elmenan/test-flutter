import 'package:equatable/equatable.dart';
import 'package:pep/features/orders/data/models/order_item_model.dart';

class OrderInfo extends Equatable {
  final String object;
  final int id;
  final String table;
  final int guests;
  final String date;
  final List<OrderItemModel> items;

  OrderInfo(
      {required this.items,
      required this.object,
      required this.id,
      required this.table,
      required this.guests,
      required this.date});

  @override
  List<Object?> get props => [items, object, id, table, guests, date];
}
