import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Contain extends StatelessWidget {
  const Contain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Container(
            height: 300,
            width: 200,
            child: Center(child: Text("hello")),
            decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(20),
              image: DecorationImage(fit: BoxFit.cover,
              image: NetworkImage('https://images.ctfassets.net/kftzwdyauwt9/6Hpmny9K2Z8Xxget5bmlWa/66634b4c69faef5600e5ea48f499ba5e/Anastronautridingahorseinaphotorealisticstyle6.jpg?w=3840&q=90&fm=webp')
              ),
                 
          )
          ),
          Container(
            height: 200,
            width: 300,
            color: Colors.amber,

          )
        ],
      )
        
      
      






    );
  }
}