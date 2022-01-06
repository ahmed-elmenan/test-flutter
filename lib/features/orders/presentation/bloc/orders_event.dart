part of 'orders_bloc.dart';

abstract class OrdersEvent extends Equatable {
  List propreties = const <dynamic>[];
  OrdersEvent([propreties]);

  @override
  List<Object?> get props => propreties;
}

class GetOrdersEvent extends OrdersEvent {
  GetOrdersEvent();
}