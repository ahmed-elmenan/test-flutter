import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pep/features/orders/domain/entities/orders.dart';
import 'package:pep/features/orders/presentation/bloc/orders_bloc.dart';
import 'package:pep/injection_container.dart';

class OrdersListBuilder extends StatefulWidget {
  const OrdersListBuilder({Key? key}) : super(key: key);

  @override
  State<OrdersListBuilder> createState() => _OrdersListBuilderState();
}

class _OrdersListBuilderState extends State<OrdersListBuilder> {
  late OrdersBloc _ordersBloc;
  Orders? _orders;

  @override
  void initState() {
    _ordersBloc = BlocProvider.of<OrdersBloc>(context);
    _orders = _ordersBloc.state.orders;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: _orders!.orders.length,
          itemBuilder: (context, index) {
            return (Text(_orders!.orders[index].table));
          }),
    );
  }
}
