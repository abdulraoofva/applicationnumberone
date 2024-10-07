import 'package:applicationnumberone/loginpage.dart';
import 'package:flutter/material.dart';

class Clickable extends StatelessWidget {
  const Clickable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onDoubleTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Loginpage()));
            

          },
          child: Container(
            height: 200,
            width: 400,
            color: Colors.amber,
          ),
        ),
      ),




    );
  }
}