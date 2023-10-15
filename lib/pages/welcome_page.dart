import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:project2uidesign/pages/home.dart';

class welcome_pages extends StatelessWidget {
  const welcome_pages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.all(20),
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset(
                'assets/onboarding.png',
            width: 380,
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Welcome To Agricplant",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)
              ),
            ),
            Text(
                "Get your Agriculture product from the comfort of your home.",
                style: Theme.of(context).textTheme.titleSmall
            ) ,
            SizedBox(height: 5,),
            Center(
              child: Text(
                  "Yo'rejust a few click away from your product..",
                  style: Theme.of(context).textTheme.titleSmall
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FilledButton.icon(
                onPressed:(){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage()));
                },
                label:Text('Continue With Google'),
                icon: Icon(IconlyLight.login
                ),
              ),
            ),
          ],
        ),
      ),),
    );
  }
}
