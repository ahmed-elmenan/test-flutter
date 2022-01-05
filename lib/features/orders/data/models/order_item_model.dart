import 'package:equatable/equatable.dart';
import 'package:pep/features/orders/domain/entities/order_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_item_model.g.dart';

@JsonSerializable()
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

  factory OrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemModelFromJson(json);
  
}
