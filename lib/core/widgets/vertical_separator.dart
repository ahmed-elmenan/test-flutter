import 'package:flutter/material.dart';
import 'package:pep/core/theme/global_theme.dart';

class VerticalSeparator extends StatelessWidget {
  const VerticalSeparator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: GlobalTheme.lightGreyColor,
      width: 3.3,
      height: 33,
    );
  }
}
