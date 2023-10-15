import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:project2uidesign/widgets/CardItem.dart';

import '../data/product.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartItem= product.take(4).toList();
    final totalprice=cartItem.
    map((e) => e.price).
    reduce((acc, cur) => acc + cur);
    return Scaffold(
      body: ListView(
        padding:EdgeInsets.all(16),
        children: [
          ...List.generate(cartItem.length, (index){
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CartItem(cartItem: cartItem[index]),
            );
          }),

          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total (${cartItem.length})"),
              Text("\$$totalprice",style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),)
            ],
          ),

          SizedBox(
            height: 20,
          ),

          FilledButton.icon(onPressed: (){},
              icon:Icon(IconlyBold.arrow_right),
              label:Text("Proceed to Checkout"))
        ],
      ),
    );
  }
}

