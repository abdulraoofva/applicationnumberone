import 'package:flutter/material.dart';

class Listviewbuilderpage extends StatelessWidget {
  const Listviewbuilderpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (BuildContext context, int index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side: BorderSide(color: Colors.redAccent)),
            
            
            hoverColor: Colors.amberAccent,
            textColor: Colors.red,
            tileColor: Colors.amberAccent,
            title: Text("Raoof",),//style: TextStyle(color: Colors.red),),
            leading: Icon(Icons.contact_emergency_outlined),
            subtitle: Text("work"),
            trailing: Icon(Icons.account_balance),
          
          ),
        );
      }, itemCount:20 ),

    );
  }
}