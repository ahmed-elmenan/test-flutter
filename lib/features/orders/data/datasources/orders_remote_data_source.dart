import 'dart:convert';

import 'package:pep/core/const/api_identifiers.dart';
import 'package:pep/core/error/exceptions.dart';
import 'package:pep/features/orders/data/models/orders_model.dart';
import 'package:pep/features/orders/domain/entities/orders.dart';
import 'package:http/http.dart' as http;

abstract class OrdersRemoteDataSource {
  Future<Orders> getOrders();
}

class OrdersRemoteDataSourceImpl implements OrdersRemoteDataSource {
  final http.Client client;

  OrdersRemoteDataSourceImpl({required this.client});

  @override
  Future<Orders> getOrders() async {
    final response = await client.get(Uri.parse(API_ENDPOINT));

    if (response.statusCode == 200) {
      final parsedJson = json.decode(response.body);
      final orders = OrdersModel.fromJson(parsedJson);
      return orders;
    } else {
      throw ServerException();
    }
  }
}
