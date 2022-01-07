import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pep/core/widgets/loading_widget.dart';
import 'package:pep/core/widgets/message_display.dart';
import 'package:pep/features/orders/presentation/bloc/orders_bloc.dart';

import 'order_list_builder.dart';

class OrdersBlocBuilder extends StatefulWidget {
  const OrdersBlocBuilder({Key? key}) : super(key: key);

  @override
  _OrdersBlocBuilderState createState() => _OrdersBlocBuilderState();
}

class _OrdersBlocBuilderState extends State<OrdersBlocBuilder> {
  _dispatchOrdersEvent() {
    BlocProvider.of<OrdersBloc>(context).add(GetOrdersEvent());
  }

  @override
  void initState() {
    super.initState();
    _dispatchOrdersEvent();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersBloc, OrdersState>(
      builder: (context, state) {
        if (state is InitialState) {
          return SizedBox();
        } else if (state is LoadingState) {
          return LoadingWidget();
        } else if (state is ErrorState) {
          return MessageDisplay(message: state.message);
        } else if (state is LoadedState) {
          return OrdersListBuilder();
        }
        return SizedBox();
      },
    );
  }
}
