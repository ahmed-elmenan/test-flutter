import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pep/core/widgets/loading_widget.dart';
import 'package:pep/core/widgets/message_display.dart';
import 'package:pep/features/orders/presentation/bloc/orders_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'order_list_builder.dart';

class OrdersBlocBuilder extends StatefulWidget {
  const OrdersBlocBuilder({Key? key}) : super(key: key);

  @override
  _OrdersBlocBuilderState createState() => _OrdersBlocBuilderState();
}

class _OrdersBlocBuilderState extends State<OrdersBlocBuilder> {
  late RefreshController _refreshController;

  _dispatchOrdersEvent() {
    BlocProvider.of<OrdersBloc>(context).add(GetOrdersEvent());
  }

  _onRefresh() async {
    _dispatchOrdersEvent();
    _refreshController.refreshCompleted();
  }

  @override
  void initState() {
    super.initState();
    _dispatchOrdersEvent();
    _refreshController = RefreshController(initialRefresh: false);
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      header: WaterDropMaterialHeader(
          color: Color(0xFF334255), backgroundColor: Color(0xFF334255)),
      controller: _refreshController,
      onRefresh: _onRefresh,
      child: BlocBuilder<OrdersBloc, OrdersState>(
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
      ),
    );
  }
}
