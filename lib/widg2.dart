import 'package:flutter/material.dart';

class Textwid extends StatelessWidget {
  const Textwid({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
      backgroundColor: Colors.amber,
      title: Text("Sample"),
      leading: Icon(Icons.person),
      actions: [
        Icon(Icons.alarm,color: Colors.red,shadows: [ BoxShadow(
        color: Colors.blue,
        spreadRadius: 8,
        blurRadius: 1,
      )],),
        Icon(Icons.wallet),
        Icon(Icons.camera),


      ],



     ),
     body: Center(
       child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20)
        ),
        height: 300,
        width: 300,
        
        child: Center(child: Text('Hey')),
       ),
     )
     
    //  Center(child: Text("welcome",style:TextStyle(color: Colors.green,) )
  

    );
  }
}