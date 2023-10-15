import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project2uidesign/model/order.dart';
import 'package:project2uidesign/model/product.dart';
import 'package:project2uidesign/pages/order_detelse_pages.dart';

class OrderProduct extends StatelessWidget {
  const OrderProduct({super.key, required this.order, required this.product});
  final Order order;
  final Product product;

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderDetelasePage(order: order)));
      },
      behavior: HitTestBehavior.opaque,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 90,
            width: 90,
            margin: EdgeInsets.only(right: 10,bottom: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(product.image)
              )
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style:theme.textTheme.titleMedium?.
                  copyWith(fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  product.description,
                  style:theme.textTheme.titleSmall,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$${product.price}",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text("Qty:${Random().nextInt(4)+1}")
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
