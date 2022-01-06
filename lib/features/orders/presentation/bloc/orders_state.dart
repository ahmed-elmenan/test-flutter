part of 'orders_bloc.dart';

abstract class OrdersState {
  Orders? orders;
  String? message;
  OrdersState({this.orders, this.message});
}

class InitialState extends OrdersState {}

class LoadingState extends OrdersState {}

class LoadedState extends OrdersState {
  final Orders orders;

  LoadedState({required this.orders}) : super(orders: orders);
}

class ErrorState extends OrdersState {
  final String message;

  ErrorState({required this.message}) : super(message: message);
}
