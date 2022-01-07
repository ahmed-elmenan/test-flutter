import 'package:flutter/material.dart';
import 'package:pep/core/theme/global_theme.dart';
import 'package:pep/core/widgets/orders_app_bar.dart';
import 'package:pep/core/widgets/total_price.dart';
import 'package:pep/features/orders/domain/entities/order_info.dart';
import 'package:pep/features/orders/presentation/widgets/order_details_widgets/tab_title.dart';

class OrderDetailsPage extends StatelessWidget {
  final OrderInfo orderInfo;
  const OrderDetailsPage({Key? key, required this.orderInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: OrdersAppBar(
            titleText: "table " + orderInfo.table,
            isBackButton: true,
          )),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            /*
             * I used a Stack widget here in order to positionne the customized divider 
             * between both tabs since there no tabBar default divider as the 
             * test design 
             */
            Stack(
              children: [
                Positioned(
                  left: MediaQuery.of(context).size.width / 2 - 2,
                  top: 10,
                  child: Container(
                    color: GlobalTheme.lightGreyColor,
                    width: 2,
                    height: 30,
                  ),
                ),
                TabBar(
                  // indicator: BoxDecoration(
                  // border: Border(right: BorderSide(color: Colors.orange))),
                  tabs: [
                    TabTitle(
                        text: Text(
                      orderInfo.items.length.toString() + " produits",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    )),
                    TabTitle(
                        text: TotalPrice(
                      orderItems: orderInfo.items,
                      primaryColor: Colors.grey,
                      secondaryColor: Colors.grey,
                    )),
                  ],
                ),
              ],
            ),
            Container(
              height: 100,
              child: TabBarView(
                children: [Text("test3"), Text("test4")],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
