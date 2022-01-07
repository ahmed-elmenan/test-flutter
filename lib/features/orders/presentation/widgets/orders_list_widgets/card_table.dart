import 'package:flutter/material.dart';
import 'package:pep/core/theme/global_style.dart';
import 'package:pep/core/theme/global_theme.dart';

class TableCard extends StatelessWidget {
  final String table;
  const TableCard({Key? key, required this.table}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 4,
      height: double.infinity,
      decoration: GlobalStyle.cardStyle(GlobalTheme.tableCardColor),
      child: Center(
          child: Text(table,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.white))),
    );
  }
}
