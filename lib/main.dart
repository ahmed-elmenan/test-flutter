import 'package:flutter/material.dart';
import 'package:pep/features/orders/presentation/pages/orders_list_page.dart';
import 'injection_container.dart' as dependency_injection;

void main() async {
  
  await dependency_injection.init();
  
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrdersListPage(),
    )
  );
}
