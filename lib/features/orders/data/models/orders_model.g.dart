// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersModel _$OrdersModelFromJson(Map<String, dynamic> json) => OrdersModel(
      object: json['object'] as String,
      orders: (json['orders'] as List<dynamic>)
          .map((e) => OrderInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrdersModelToJson(OrdersModel instance) =>
    <String, dynamic>{
      'object': instance.object,
      'orders': instance.orders,
    };
