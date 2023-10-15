import 'dart:ui';
import 'package:flutter/material.dart';
import '../data/services.dart';
class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView.builder(
        padding: EdgeInsets.all(16),
        itemCount:services.length,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
          mainAxisSpacing: 13,
          crossAxisSpacing: 13,
          childAspectRatio: 0.85,
      ),
          itemBuilder: (context,index){
          final service=services[index];
        return Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                service.image,
              )
            )
          ),

          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: BackdropFilter(
              filter:ImageFilter.blur(sigmaX: 5,sigmaY: 5),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5,vertical:5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(0.1)
                ),
                  child: Text(service.name,
                  style: TextStyle(
                    color:Colors.white70,fontWeight: FontWeight.bold
                  ),
                  )
              ),
            ),
          ),
        );
      },)
    );
  }
}
