import 'package:flutter/material.dart';

class Snack extends StatelessWidget {
  const Snack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(onPressed: (){
           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("success"),backgroundColor: Colors.pink,elevation: 20,));
         
          
        }, child: Text("SIGNUP"),style: OutlinedButton.styleFrom(foregroundColor: Colors.amber),),
      ),






    );
  }
}