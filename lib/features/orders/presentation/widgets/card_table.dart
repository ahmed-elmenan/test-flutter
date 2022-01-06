import 'package:flutter/material.dart';
import 'package:pep/core/theme/global_style.dart';
import 'package:pep/core/theme/global_theme.dart';

class TableCard extends StatelessWidget {
  const TableCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: GlobalStyle.cardStyle(GlobalTheme.tableCardColor),
      child: Center(
          child: Text("8",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white))),
    );
  }
}
