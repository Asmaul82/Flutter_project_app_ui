import 'package:project2uidesign/model/product.dart';
import 'package:project2uidesign/utils/enum/order.dart';

class Order{
  final String id;
  final List<Product>products;
  final DateTime orderingDate;
  final DateTime deliveryDate;
  final OrderStatus status;

  Order({
    required this.id,
    required this.products,
    required this.orderingDate,
    required this.deliveryDate,
    required this.status});
}