import 'order_item.dart';

class OrderInfo {
  final String object;
  final int id;
  final String table;
  final int guests;
  final String date;
  final List<OrderItem> items;

  OrderInfo(
      {required this.items,
      required this.object,
      required this.id,
      required this.table,
      required this.guests,
      required this.date});
}
