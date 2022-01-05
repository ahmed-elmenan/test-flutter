import 'package:dartz/dartz.dart';
import 'package:pep/core/error/failure.dart';

abstract class OrderRepository {
  Future<Either<Failure, Order>> getOrders();
}
