import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:project2uidesign/data/product.dart';
import 'package:project2uidesign/model/product.dart';

class Product_detealse extends StatefulWidget {
  const Product_detealse({super.key, required this.product});

  final Product product;


  @override
  State<Product_detealse> createState() => _Product_detealseState();
}

class _Product_detealseState extends State<Product_detealse> {
  bool ShowMore =false;
  late TapGestureRecognizer readMoreGestureRecognizer;


  @override
  void initState() {
    readMoreGestureRecognizer=TapGestureRecognizer()..onTap=(){
      setState(() {
        ShowMore=!ShowMore;
      });
    };
    super.initState();
  }

  @override
  void dispose() {

    super.dispose();
    readMoreGestureRecognizer.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Details')),
        actions: [
          IconButton(
              onPressed: (){},
              icon:Icon(IconlyLight.bookmark)
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Container(
            height: 250,
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  widget.product.image,
                )
              )
            ),
          ),
          Text(
            widget.product.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Available in stock',style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
               ),
              ),

              RichText(text:TextSpan(
                  children: [
                    TextSpan(
                      text: '\$${widget.product.price}',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    TextSpan(
                      text: '/${widget.product.unite}',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ]
                )
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Icon(Icons.star,size: 16,color: Colors.yellowAccent.shade700,),
              Text('${widget.product.rating}(198)'),
              Spacer(),
              SizedBox(
                width: 30,
                height: 30,
                child: IconButton.filled(
                    padding: EdgeInsets.zero,
                    onPressed: (){},
                    iconSize: 18,
                    icon: const Icon(
                      Icons.remove,
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text('1${widget.product.unite}',style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  )
                ),
              ),

              SizedBox(
                width: 30,
                height: 30,
                child: IconButton.filled(
                    padding: EdgeInsets.zero,
                    onPressed: (){},
                    iconSize: 18,
                    icon: const Icon(
                      Icons.add,
                    )
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Text("Description",style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5,),

          RichText(text: TextSpan(
            style: Theme.of(context).textTheme.titleMedium,
            children: [
              TextSpan(
                text:ShowMore
                    ? widget.product.description
                    :"${ widget.product.description.substring(0, widget.product.description.length - 100)}...",
              ),
              TextSpan(
                recognizer: readMoreGestureRecognizer,
                text: ShowMore? "..Read less" : " Read more",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
           ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            height: 90,
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
                itemBuilder:(context,index){
                  return Container(
                    height: 90,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(product[index].image,
                      ))
                    )
                  );
                }, separatorBuilder: (context,index) => SizedBox(width: 10,),
                itemCount:product.length),
          ),
          SizedBox(height: 20,),
          FilledButton.icon(onPressed:(){}, label:Text("Add to Cadr"),icon: Icon(IconlyLight.bag_2),)
        ],
      ),
    );
  }
}
