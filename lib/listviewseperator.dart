import 'package:flutter/material.dart';

class Listseparator extends StatelessWidget {
  const Listseparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.separated(itemBuilder: (BuildContext context, int index ){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text("name"),
            textColor: Colors.blueAccent,
            tileColor: Colors.yellow,
            subtitle: Text("description"),
            leading: Icon(Icons.access_alarm),
            iconColor: Colors.red,
          
          
          
          ),
        );

      }, separatorBuilder: (BuildContext context, int index){
        return Container(
          child: Text("This is an Ad"),
          
          
        );




      }, itemCount: 15)




      );
    
  }
}