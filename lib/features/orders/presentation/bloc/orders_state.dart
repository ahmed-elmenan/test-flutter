
part of 'orders_bloc.dart';

abstract class OrdersState extends Equatable {
  List propreties = const <dynamic>[];
  OrdersState([propreties]);
  
  @override
  List<Object?> get props => propreties;
}

class InitialState extends OrdersState {}

class LoadingState extends OrdersState {}

class LoadedState extends OrdersState {

  final Orders orders;

  LoadedState({required this.orders}) : super([orders]);
}

class ErrorState extends OrdersState {

  final String message;

  ErrorState({required this.message}) : super([message]);
}