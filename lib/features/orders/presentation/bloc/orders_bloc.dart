import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logger/logger.dart';
import 'package:pep/core/utils/error_utils.dart';
import 'package:pep/features/orders/domain/entities/orders.dart';
import 'package:pep/features/orders/domain/usecases/get_orders.dart';

part 'orders_event.dart';
part 'orders_state.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final GetOrders getOrders;
  final Logger logger;

  OrdersBloc({required this.logger, required this.getOrders}) : super(InitialState());

  @override
  void onEvent(OrdersEvent event) {
    logger.d(event.toString());
    super.onEvent(event);
  }

  @override
  void onChange(Change<OrdersState> change) {
    logger.d(change.nextState.toString());
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    logger.e(error);
    super.onError(error, stackTrace);
  }
  @override
  Stream<OrdersState> mapEventToState(OrdersEvent event) async* {
    if (event is GetOrdersEvent) {
      yield LoadingState();

      final ordersEither = await getOrders.getOrders();

      yield* ordersEither.fold((failure) async* {
        yield ErrorState(message: ErrorUtils.mapFailureToMessage(failure));
        yield  LoadingState();
      }, (orders) async* {
        yield LoadedState(orders: orders);
      });
    }
  }
}
