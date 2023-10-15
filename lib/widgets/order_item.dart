import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:project2uidesign/model/order.dart';
import 'package:project2uidesign/widgets/order_product.dart';
class OrderItem extends StatelessWidget {
  const OrderItem({super.key, required this.order, this.visibleProducts =2 });
  final Order order;
  final int visibleProducts;

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    final totalPrice=order.products.fold(0.0, (acc, e) => acc + e.price);
    final products =order.products.take(visibleProducts).toList();
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0.1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        side: BorderSide(
          width: 1,
          color: Colors.grey.shade300,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                    "order:${order.id}",
                  style:theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ) ,
                ),
                const Spacer(),
                Text(
                  "(${order.products.length}Items)",
                   style: theme.textTheme.titleSmall,
                ),
                SizedBox(width: 5,),
                Text("\$${totalPrice.toStringAsFixed(2)}"),

              ],
            ),
            SizedBox(height: 20,),
            ...List.generate(products.length, (index){
              return OrderProduct(order: order, product: products[index],);
            }),
            if(order.products.length > 2)

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextButton.icon(onPressed: (){
                showModalBottomSheet(
                  showDragHandle: true,
                    isScrollControlled: true,
                    context: context,
                    builder: (context){
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: ListView.builder(
                            itemCount: order.products.length,
                            padding: EdgeInsets.all(14),
                            itemBuilder: (context,index){
                          final product = order.products[index];
                          return OrderProduct(order:order, product: product);
                        }),
                      );
                    },
                );
              },
                  icon:Icon(
                      IconlyBold.arrow_right
                  ),
                  label:Text(
                      "Viwe All"
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
