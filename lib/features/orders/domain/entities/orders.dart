import 'package:equatable/equatable.dart';
import 'package:pep/features/orders/data/models/order_info_model.dart';
import 'package:pep/features/orders/domain/entities/order_info.dart';

class Orders extends Equatable{
  final String object;
  final List<OrderInfoModel> orders;

  Orders({required this.object, required this.orders});

  @override
  List<Object?> get props => [object, orders];
}
