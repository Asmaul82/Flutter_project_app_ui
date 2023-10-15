import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:project2uidesign/model/product.dart';
import 'package:project2uidesign/pages/product_detelse.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Product_detealse(product: product)));
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0.1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          side: BorderSide(
            width: 1,
          color: Colors.grey.shade300,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topRight,
              height: 120,
              width: double.infinity,
              padding: EdgeInsets.all(8.0),
              decoration:BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    product.image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),

              child: SizedBox(
                width: 30,
                height: 30,
                child: IconButton.filled(
                  padding: EdgeInsets.zero,
                    onPressed: (){},
                    iconSize: 18,
                    icon: const Icon(
                      IconlyLight.bookmark,
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      product.name,
                      style: Theme.of(context).textTheme.bodyLarge,),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(text:TextSpan(
                        children: [
                          TextSpan(
                            text: '\$${product.price}',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: '/${product.unite}',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),

                        ]
                       )
                      ),
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: IconButton(
                          iconSize: 18,
                          padding: EdgeInsets.zero,
                            onPressed: (){},
                            icon:Container(
                              width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.lightGreenAccent.shade700,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Icon(Icons.add,color: Colors.white,)
                            )
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

