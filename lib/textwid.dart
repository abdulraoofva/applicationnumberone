import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Chat Hub",style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold),),
        
        leading: Icon(Icons.chat),
        actions: [
          Icon(Icons.home,size: 60,color: Colors.cyan,),
          SizedBox(width: 20,),
          Icon(Icons.camera),
          SizedBox(width: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Icon(Icons.tiktok),
          )
        ],
      ),
    );
  }
}