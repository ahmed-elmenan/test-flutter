import 'package:dartz/dartz.dart';
import 'package:pep/core/error/failure.dart';
import 'package:pep/features/orders/domain/entities/orders.dart';
import 'package:pep/features/orders/domain/repositories/order_repository.dart';

class GetOrders {
  final OrderRepository repository;

  GetOrders({required this.repository});

  Future<Either<Failure, Orders>> getOrders() async {
    return await repository.getOrders();
  }
}
