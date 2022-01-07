import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pep/core/theme/global_style.dart';
import 'package:pep/core/theme/global_theme.dart';

class OrdersAppBar extends StatelessWidget {
  final String titleText;
  final bool isBackButton;
  const OrdersAppBar(
      {Key? key, required this.titleText, this.isBackButton = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: GlobalTheme.secondaryBackgroundColor,
      elevation: 0,
      actions: const [
        SizedBox(
          width: 50,
        )
      ],
      /*
       * On the leading bellow I control the display of the back button since 
       * I use the OrdersAppBar in both orders list and details pages so I won't 
       * display the button on the first page 
       */
      leading: isBackButton
          ? Center(
              child: FaIcon(
                FontAwesomeIcons.chevronLeft,
                color: GlobalTheme.cardPrimaryColor,
              ),
            )
          : SizedBox(),
      title: Center(
          child: Text(
        titleText,
        style: GlobalStyle.appBarTextStyle,
      )),
    );
  }
}
