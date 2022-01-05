import 'package:equatable/equatable.dart';
import 'package:pep/features/orders/domain/entities/order_info.dart';

class Order extends Equatable{
  final String object;
  final List<OrderInfo> orders;

  Order({required this.object, required this.orders});

  @override
  List<Object?> get props => [object, orders];
}
