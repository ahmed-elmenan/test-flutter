import 'package:flutter/material.dart';
import 'package:pep/core/theme/global_theme.dart';

class LoadingWidget extends StatelessWidget {
   LoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(GlobalTheme.cardPrimaryColor),
        ),
      ),
    );
  }
}