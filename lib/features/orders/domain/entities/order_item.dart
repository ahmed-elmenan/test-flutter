import 'package:equatable/equatable.dart';

class OrderItem extends Equatable {
  final String object;
  final int id;
  final String name;
  final double price;
  final String currency;
  final String color;

  const OrderItem(
      {required this.object,
      required this.id,
      required this.name,
      required this.price,
      required this.currency,
      required this.color});

  @override
  List<Object> get props => [object, id, name, price, currency, color];
}
