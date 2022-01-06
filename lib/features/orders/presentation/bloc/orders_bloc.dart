import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pep/core/utils/error_utils.dart';
import 'package:pep/features/orders/domain/entities/orders.dart';
import 'package:pep/features/orders/domain/usecases/get_orders.dart';

part 'orders_event.dart';
part 'orders_state.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final GetOrders getOrders;

  OrdersBloc({required this.getOrders}) : super(InitialState());

  @override
  Stream<OrdersState> mapEventToState(OrdersEvent event) async* {
    if (event is GetOrdersEvent) {
      yield LoadingState();

      final ordersEither = await getOrders.getOrders();

      yield* ordersEither.fold((failure) async* {
        yield ErrorState(message: ErrorUtils.mapFailureToMessage(failure));
      }, (orders) async* {
        yield LoadedState(orders: orders);
      });
    }
  }
}
