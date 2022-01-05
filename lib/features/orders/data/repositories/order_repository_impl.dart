import 'package:pep/core/error/exceptions.dart';
import 'package:pep/core/network/network_info.dart';
import 'package:pep/features/orders/data/datasources/orders_remote_data_source.dart';
import 'package:pep/features/orders/domain/entities/orders.dart';
import 'package:pep/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:pep/features/orders/domain/repositories/order_repository.dart';

class OrderRepositoryImpl implements OrderRepository {
  final OrdersRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  OrderRepositoryImpl(
      {required this.remoteDataSource, required this.networkInfo});

  @override
  Future<Either<Failure, Orders>> getOrders() async {
    if (await networkInfo.isConnected) {
      try {
        final orders = await remoteDataSource.getOrders();
        return Right(orders);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }
}
