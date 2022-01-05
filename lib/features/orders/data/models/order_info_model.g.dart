// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderInfoModel _$OrderInfoModelFromJson(Map<String, dynamic> json) =>
    OrderInfoModel(
      object: json['object'] as String,
      id: json['id'] as int,
      table: json['table'] as String,
      guests: json['guests'] as int,
      date: json['date'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderInfoModelToJson(OrderInfoModel instance) =>
    <String, dynamic>{
      'object': instance.object,
      'id': instance.id,
      'table': instance.table,
      'guests': instance.guests,
      'date': instance.date,
      'items': instance.items,
    };
