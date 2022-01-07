import 'package:flutter/material.dart';

class TabTitle extends StatelessWidget {
  final Widget text;
  const TabTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 60, child: Center(child: text));
  }
}
