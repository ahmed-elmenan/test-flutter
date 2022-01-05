import 'package:equatable/equatable.dart';
import 'package:pep/features/orders/domain/entities/order_info.dart';
import 'package:pep/features/orders/domain/entities/orders.dart';
import 'package:json_annotation/json_annotation.dart';

import 'order_info_model.dart';

part 'orders_model.g.dart';

@JsonSerializable()
class OrdersModel extends Orders {
 
  OrdersModel({required String object, required List<OrderInfoModel> orders})
      : super(object: object, orders: orders);

  factory OrdersModel.fromJson(Map<String, dynamic> json) =>
      _$OrdersModelFromJson(json);
}
