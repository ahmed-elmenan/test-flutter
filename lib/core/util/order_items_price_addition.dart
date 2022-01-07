import 'package:pep/features/orders/data/models/order_item_model.dart';


/// the orderItemsPriceAddition function make the sum of the order items
/// then it splitted that sum by the decimal point   

List<String> orderItemsPriceAddition(List<OrderItemModel> orderItems) {
  double total = 0;
  List<String> splittedList;

  orderItems.forEach((element) {
    total += element.price;
  });

  splittedList = total.toStringAsFixed(2).split(".");

  return splittedList;
}
