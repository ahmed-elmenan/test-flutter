import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pep/core/theme/global_theme.dart';
import 'package:pep/core/widgets/loading_widget.dart';
import 'package:pep/core/widgets/message_display.dart';
import 'package:pep/features/orders/presentation/bloc/orders_bloc.dart';
import 'package:pep/features/orders/presentation/widgets/orders_bloc_builder.dart';
import 'package:pep/injection_container.dart';

class OrdersListPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GlobalTheme.backgroundColor,
        body: BlocProvider(
          create: (_) => serviceLocator<OrdersBloc>(),
          child: Container(child: Center(
            child: OrdersBlocBuilder()
          )),
        ));
  }
}
