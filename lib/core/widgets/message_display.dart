import 'package:flutter/material.dart';
import 'package:pep/core/theme/global_theme.dart';

class MessageDisplay extends StatelessWidget {
  final String message;

  const MessageDisplay({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Center(
        child: Text(
          message,
          style: TextStyle(fontSize: 25, color: GlobalTheme.cardPrimaryColor),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
