import 'package:equatable/equatable.dart';
import 'package:pep/features/orders/domain/entities/order_info.dart';
import 'package:pep/features/orders/domain/entities/orders.dart';
import 'package:json_annotation/json_annotation.dart';


class OrdersModel extends Orders {
 
  OrdersModel({required String object, required List<OrderInfo> orders})
      : super(object: object, orders: orders);

}
