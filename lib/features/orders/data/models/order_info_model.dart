import 'package:pep/features/orders/domain/entities/order_info.dart';
import 'package:pep/features/orders/domain/entities/order_item.dart';
import 'package:json_annotation/json_annotation.dart';

class OrderInfoModel extends OrderInfo {
  OrderInfoModel(
      {required String object,
      required int id,
      required String table,
      required int guests,
      required String date,
      required List<OrderItem> items})
      : super(
            object: object,
            id: id,
            table: table,
            guests: guests,
            date: date,
            items: items);
}
