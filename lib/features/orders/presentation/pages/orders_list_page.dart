import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pep/features/orders/presentation/bloc/orders_bloc.dart';
import 'package:pep/features/orders/presentation/widgets/orders_list_widgets/orders_bloc_builder.dart';
import 'package:pep/injection_container.dart';

class OrdersListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => serviceLocator<OrdersBloc>(),
      child: Scaffold(
        body: OrdersBlocBuilder(),
      ),
    );
  }
}
