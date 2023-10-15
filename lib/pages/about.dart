import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("About Us",style: Theme.of(context).textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
          color:Theme.of(context).colorScheme.primary,
        ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Icon(IconlyLight.info_square,size: 30,color: Colors.green,),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(child: Text(" Feel Free to Contact us for any inconvenience Our Email..",style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color:Theme.of(context).colorScheme.primary,
                    ),
                 ),
             ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(child: Text("agri123.yt@gmal.com",style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color:Theme.of(context).colorScheme.primary,
                    ),
                 ),
             ),
          ),
        ],
      ),
    );
  }
}
