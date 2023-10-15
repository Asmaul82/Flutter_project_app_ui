import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:project2uidesign/pages/about%20us.dart';
import 'package:project2uidesign/pages/order_page.dart';

import 'welcome_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25.0,bottom: 15),
            child: CircleAvatar(
              radius: 65,
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: CircleAvatar(
                radius: 60,
                foregroundImage: AssetImage("assets/fruit.jpg"),
              ),
            ),
          ),
          Center(
            child: Text(
              'Asmaul',
            style: Theme.of(context).textTheme.titleMedium,
            ),
          ),

          Center(
            child: Text(
              'asmaulhaideremon1@gmail.com',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),

          SizedBox(
            height: 25,
          ),

          ListTile(
            title: Text("My Order"),
            leading: Icon(IconlyLight.bag),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>OrdersPage()));
            },
          ),

          ListTile(
            title: Text("About us"),
            leading: Icon(IconlyLight.info_square),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUs()));
            },
          ),

          ListTile(
            title: Text("Log Out"),
            leading: Icon(IconlyLight.logout),
            onTap: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=>welcome_pages()));
            },
          ),
        ],
      ),
    );
  }
}
