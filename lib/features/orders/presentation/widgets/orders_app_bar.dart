import 'package:flutter/material.dart';
import 'package:pep/core/theme/global_style.dart';
import 'package:pep/core/theme/global_theme.dart';

class OrdersAppBar extends StatelessWidget {
  final String titleText;
  const OrdersAppBar({Key? key, required this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: GlobalTheme.secondaryBackgroundColor,
        elevation: 0,
        title: Center(
            child: Text(
          titleText,
          style: GlobalStyle.appBarTextStyle,
        )),
      );
  }
}
