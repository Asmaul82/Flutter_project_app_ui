import 'package:project2uidesign/data/product.dart';
import 'package:project2uidesign/utils/enum/order.dart';

import '../model/order.dart';

List<Order> orders=[
  Order(
      id: "1023ajes",
      products:product.reversed.take(1).toList(),
      orderingDate: DateTime.utc(2023,8,15),
      deliveryDate: DateTime.utc(2023,11,16),
      status:OrderStatus.delivered,
  ),
  Order(
      id: "10113ajes",
      products:product.reversed.take(1).toList(),
      orderingDate: DateTime.utc(2023,8,15),
      deliveryDate: DateTime.utc(2023,11,16),
      status:OrderStatus.delivered,
  ),

  Order(
      id: "5023ajes",
      products:product.reversed.take(2).toList(),
      orderingDate: DateTime.utc(2023,10,15),
      deliveryDate: DateTime.utc(2023,10,17),
      status:OrderStatus.delivered,
  ),

  Order(
      id: "91023ajes",
      products:product.reversed.take(2).toList(),
      orderingDate: DateTime.utc(2023,10,13),
      deliveryDate: DateTime.utc(2023,10,18),
      status:OrderStatus.delivered,
  ),

  Order(
      id: "26023ejes",
      products:product.reversed.take(1).toList(),
      orderingDate: DateTime.utc(2023,10,14),
      deliveryDate: DateTime.utc(2023,10,19),
      status:OrderStatus.delivered,
  ),

  Order(
      id: "72023ejes",
      products:product.reversed.take(1).toList(),
      orderingDate: DateTime.utc(2023,10,11),
      deliveryDate: DateTime.utc(2023,10,20),
      status:OrderStatus.delivered,
  ),

  Order(
      id: "82023ejes",
      products:product.reversed.take(1).toList(),
      orderingDate: DateTime.utc(2023,10,11),
      deliveryDate: DateTime.utc(2023,10,20),
      status:OrderStatus.delivered,
  ) ,

  Order(
      id: "032023ejes",
      products:product.reversed.take(3).toList(),
      orderingDate: DateTime.utc(2023,10,11),
      deliveryDate: DateTime.utc(2023,10,20),
      status:OrderStatus.delivered,
  ),
  Order(
      id: "01023ejrs",
      products:product.reversed.take(3).toList(),
      orderingDate: DateTime.utc(2023,10,11),
      deliveryDate: DateTime.utc(2023,10,20),
      status:OrderStatus.delivered,
  ),

  Order(
      id: "3203afm",
      products:product.reversed.skip(3).toList(),
      orderingDate: DateTime.utc(2023,9,14),
      deliveryDate: DateTime.utc(2023,10,17),
      status:OrderStatus.delivered,
  ),

  Order(
      id: "4302w4def",
      products:product.reversed.skip(4).toList(),
      orderingDate: DateTime.utc(2023,10,14),
      deliveryDate: DateTime.utc(2023,10,15),
      status:OrderStatus.delivered,
  ),

  Order(
      id: "653ajes",
      products:product.reversed.skip(4).toList(),
      orderingDate: DateTime.utc(2023,5,14),
      deliveryDate: DateTime.utc(2023,7,5),
      status:OrderStatus.delivered,
  ),

  Order(
      id: "1003fffojes",
      products:product.reversed.skip(1).toList(),
      orderingDate: DateTime.utc(2023,10,14),
      deliveryDate: DateTime.utc(2023,10,15),
      status:OrderStatus.delivered,
  ),

  Order(
      id: "113aaje",
      products:product.reversed.skip(1).toList(),
      orderingDate: DateTime.utc(2023,6,14),
      deliveryDate: DateTime.utc(2023,9,15),
      status:OrderStatus.delivered,
  ),
];