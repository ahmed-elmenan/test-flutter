import 'package:flutter/material.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("48,00 \$",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ));
  }
}
