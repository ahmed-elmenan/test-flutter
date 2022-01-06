import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:pep/features/orders/data/datasources/orders_remote_data_source.dart';
import 'package:pep/features/orders/data/repositories/order_repository_impl.dart';
import 'package:pep/features/orders/domain/usecases/get_orders.dart';
import 'package:pep/features/orders/presentation/bloc/orders_bloc.dart';
import 'package:http/http.dart' as http;

import 'core/network/network_info.dart';
import 'features/orders/domain/repositories/order_repository.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {

  //! Features - Core

  // NetworkInfo
  serviceLocator.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: serviceLocator()));

  //! Features - Orders

  //Bloc
  serviceLocator.registerFactory(() => OrdersBloc(getOrders: serviceLocator()));

  // Use Cases
  serviceLocator
      .registerLazySingleton(() => GetOrders(repository: serviceLocator()));

  // Repoitory
  serviceLocator.registerLazySingleton<OrderRepository>(() =>
      OrderRepositoryImpl(
          remoteDataSource: serviceLocator(), networkInfo: serviceLocator()));

  // Data
  serviceLocator.registerLazySingleton<OrdersRemoteDataSource>(
      () => OrdersRemoteDataSourceImpl(client: serviceLocator()));

  //! External

 serviceLocator.registerLazySingleton(() => http.Client());
 serviceLocator.registerLazySingleton(() => DataConnectionChecker());

}