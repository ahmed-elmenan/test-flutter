
// @dart=2.9

import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:meta/meta.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}


class NetworkInfoImpl implements NetworkInfo {
  final DataConnectionChecker connectionChecker;

  NetworkInfoImpl({@required this.connectionChecker});

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}