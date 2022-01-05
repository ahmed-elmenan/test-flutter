import 'package:dartz/dartz.dart';
import 'package:pep/core/error/failure.dart';
import 'package:pep/features/orders/domain/entities/orders.dart';

abstract class OrderRepository {
  Future<Either<Failure, Orders>> getOrders();
}
