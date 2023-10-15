import 'package:flutter/material.dart';
import 'package:project2uidesign/data/orders.dart';
import 'package:project2uidesign/widgets/order_item.dart';

import '../utils/enum/order.dart';
class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs=OrderStatus.values.map((e) => e.name).toList();
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Order"),
          bottom: TabBar(
            isScrollable: true,
            tabs: List.generate(tabs.length, (index){
            return Tab(
              text: tabs[index],
            );
           }),
          ),
        ),
        body: TabBarView(
          children: List.generate(tabs.length, (index){
            final fileredOrders=orders.where((order) =>order.status==OrderStatus.values[index]).toList();
            return ListView.separated(
              padding: EdgeInsets.all(16),
              itemBuilder: (context, index){
              final order = fileredOrders[index];
              return OrderItem(order: order);
            }, separatorBuilder: (context,index)=> SizedBox(height: 10,), itemCount:fileredOrders.length,);
          }),
        ),
      ),
    );
  }
}
