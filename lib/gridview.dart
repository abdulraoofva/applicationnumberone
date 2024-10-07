import 'package:flutter/material.dart';

class Gridviewpage extends StatelessWidget {
  List<String> text=['arjith','pritam','jubin'];
   Gridviewpage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
      itemCount: 3,
      itemBuilder: (BuildContext context, int index){
return Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
    color: Colors.red,
    child: Text(text[index]),
  ),
);
      })
    



    );
  }
}