import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:iconly/iconly.dart';
import 'package:project2uidesign/data/product.dart';



import '../widgets/product_card.dart';
class  ExplorePage extends StatelessWidget {
  const  ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'search here ...',
                          isDense: true,
                          contentPadding: EdgeInsets.all(12),
                          border:OutlineInputBorder(
                            borderSide: BorderSide(color:Colors.lightGreenAccent),
                            borderRadius: BorderRadius.all(Radius.circular(86))
                          ),
                          prefixIcon: Icon(Icons.search,color: Colors.deepOrange,size: 20,),
                        ),
                      ),
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: IconButton.filled(onPressed: (){},
                      icon:Icon(IconlyLight.filter)),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: SizedBox(
              height: 170,

                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Card(
                    color: Colors.green.shade50,
                    elevation: 0.1,
                    shadowColor: Colors.green.shade50,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Free Consultation',
                                  style: TextStyle(color: Colors.green.shade800,fontSize: 20,fontWeight:
                                  FontWeight.bold
                                  ),
                                ),
                                Text(
                                    "Get free support from our customer service"
                                ),

                                FilledButton(
                                    onPressed: (){
                                      FlutterPhoneDirectCaller.callNumber('+8801723509082');
                                    },
                                    child:Text('Call now')
                                ),
                              ],
                            ),
                          ),

                          Image.asset(
                            'assets/contact_us.png',
                            width: 160,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
            ),
          ),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 6.0),
                child: Text(
                    'Feature Prodct',
                  style:Theme.of(context).textTheme.titleMedium,
                ),
              ),
              TextButton(onPressed: (){}, child: Text('See all'))
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount:product.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.9,
              ), itemBuilder: (context,index){
                return
                  ProductCard(product: product[index],);
          })
        ],
      ),
    );
  }
}
 
