import 'package:flutter/material.dart';
import 'package:pep/core/theme/global_theme.dart';
import 'package:string_to_hex/string_to_hex.dart';

class GlobalStyle {
  static TextStyle appBarTextStyle =
      TextStyle(fontWeight: FontWeight.bold, color: GlobalTheme.headingColor);

  static TextStyle orderCardGuestsandDateStyle = TextStyle(
      color: GlobalTheme.cardPrimaryColor, fontWeight: FontWeight.bold);

  static BoxDecoration cardStyle(Color color) => BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      );

  static TextStyle orderItemCardStyle(String color) => TextStyle(
      color: Color(GlobalTheme.convertStringHexToColor(color)),
      fontWeight: FontWeight.bold,
      fontSize: 16);
}
