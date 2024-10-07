import 'package:flutter/material.dart';

class Listviewpage extends StatelessWidget {
  const Listviewpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 500,
            width: 400,
            color: Colors.black54,
          ),
          Container(
            height: 400,
            width: 400,
            color: Colors.amber,
          ),
          Container(
            height: 400,
            width: 400,
            color: Colors.blue,
          )

        ],
      ),



    );
  }
}