import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:project2uidesign/model/order.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:project2uidesign/utils/extension/data.dart';
import 'package:project2uidesign/widgets/order_item.dart';
import '../utils/enum/order.dart';

class OrderDetelasePage extends StatelessWidget {
  const OrderDetelasePage({super.key, required this.order});
  final Order order;

  @override
  Widget build(BuildContext context) {
    const steps=OrderStatus.values;
    final activeStep =steps.indexOf(order.status);
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Detelse"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          EasyStepper(
            activeStep:
              activeStep == steps.length -1 ? activeStep + 1 : activeStep,
            stepRadius: 8,
            activeStepTextColor: Colors.black87,
            finishedStepTextColor:Theme.of(context).colorScheme.primary,
            lineStyle:LineStyle(
              defaultLineColor: Colors.grey.shade300,
              lineLength: (MediaQuery.of(context).size.width * 0.7)/steps.length,
            ),
            steps: List.generate(steps.length, (index){
            return EasyStep(
              icon: Icon(Icons.local_shipping),
              finishIcon: Icon(Icons.done),
              title: steps[index].name,
              topTitle: true,
            );
               },
             ),
           ),
          SizedBox(height: 9,),
          Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              side: BorderSide(color: Colors.grey.shade200),
            ),
            elevation: 0.1,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            "order:${order.id}",style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Chip(
                          shape: const StadiumBorder(),
                            side: BorderSide(),
                            backgroundColor: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer
                                .withOpacity(0.4),
                            labelPadding: EdgeInsets.zero,
                            avatar: Icon(Icons.fire_truck),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            label: Text(steps[activeStep].name),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Delivery Esteimate'),

                      Text(order.deliveryDate.formatDate,style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Asmaul Haider",style: TextStyle(fontWeight: FontWeight.bold),),

                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Icon(IconlyLight.home,size: 15,),
                      SizedBox(width: 5,),

                      Expanded(child: Text("Dhaka North Askona Pani\n Pamp House No 312")),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Icon(IconlyLight.call,size: 15,),
                      SizedBox(width: 5,),

                      Expanded(child: Text("01723509082")),
                    ],
                  ),

                  SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Text("Payment Method"),
                      SizedBox(width: 5,),

                      Expanded(child: Text("Credit Card ***1092",
                        style: TextStyle(fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30,),
          OrderItem(
            order: order,
            visibleProducts: 1),
        ],
      ),
    );
  }
}

