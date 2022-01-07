import 'package:flutter/material.dart';
import 'package:pep/core/theme/global_theme.dart';
import 'package:pep/core/widgets/message_display.dart';
import 'package:pep/core/widgets/orders_app_bar.dart';
import 'package:pep/core/widgets/total_price.dart';
import 'package:pep/core/widgets/vertical_separator.dart';
import 'package:pep/features/orders/domain/entities/order_info.dart';
import 'package:pep/features/orders/presentation/bloc/orders_bloc.dart';
import 'package:pep/features/orders/presentation/widgets/order_details_widgets/items_list.dart';
import 'package:pep/features/orders/presentation/widgets/order_details_widgets/tab_title.dart';

class OrderDetailsPage extends StatefulWidget {
  final OrderInfo orderInfo;
  const OrderDetailsPage({Key? key, required this.orderInfo}) : super(key: key);

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage>
    with TickerProviderStateMixin {
  late TabController tabController;
  Color totalPriceEnabledColor = Colors.blue;
  Color totalProductEnabledColor = Colors.grey;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(
      initialIndex: 1,
      length: 2,
      vsync: this,
    );

    tabController.addListener(() {
      _handleTabBarTitleColorState();
    });
  }

/*
 * the function below handle the tabBar titles' color states
 * for disabling and enabling purposes  
 */
  _handleTabBarTitleColorState() {
    setState(() {
      if (tabController.index == 1) {
        _assignColor(Colors.blue, Colors.grey);
      } else {
        _assignColor(
          Colors.grey,
          Colors.blue,
        );
      }
    });
  }

  _assignColor(Color totalPriceColor, Color totalProduct) {
    totalPriceEnabledColor = totalPriceColor;
    totalProductEnabledColor = totalProduct;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: OrdersAppBar(
            titleText: "table " + widget.orderInfo.table,
            isBackButton: true,
          )),
      body: Column(
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
                  child: VerticalSeparator()),
              TabBar(
                controller: tabController,
                indicatorWeight: 5,
                tabs: [
                  TabTitle(
                      text: Text(
                    widget.orderInfo.items.length.toString() + " produits",
                    style: TextStyle(
                      color: totalProductEnabledColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  )),
                  TabTitle(
                      text: TotalPrice(
                    orderItems: widget.orderInfo.items,
                    primaryColor: totalPriceEnabledColor,
                    secondaryColor: totalPriceEnabledColor,
                  )),
                ],
              ),
            ],
          ),
          Flexible(
            child: TabBarView(
              controller: tabController,
              children: [
                MessageDisplay(message: "Empty Tab"),
                ItemsList(orderItemsList: widget.orderInfo.items)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
