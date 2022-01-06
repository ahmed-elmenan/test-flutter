import 'package:flutter/material.dart';
import 'package:pep/core/theme/global_theme.dart';

class GlobalStyle {
  static TextStyle appBarTextStyle =
      TextStyle(fontWeight: FontWeight.bold, color: GlobalTheme.headingColor);

  static BoxDecoration cardStyle(Color color) => BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      );
}
