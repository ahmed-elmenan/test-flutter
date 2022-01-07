import 'package:flutter/material.dart';
import 'package:pep/core/theme/global_style.dart';
import 'package:string_to_hex/string_to_hex.dart';

class ItemCardText extends StatelessWidget {
  final String color;
  final String text;
  const ItemCardText({Key? key, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: GlobalStyle.orderItemCardStyle(color));
  }
}
