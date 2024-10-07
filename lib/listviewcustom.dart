import 'package:flutter/material.dart';

class Customlist extends StatelessWidget {
  const Customlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.custom(
        childrenDelegate:SliverChildBuilderDelegate(
          (BuildContext context,int index){
            return ListTile(
              title: Text("Raoof"),
              subtitle: Text("Amal Jyothi"),
              leading: Icon(Icons.ac_unit_outlined),
              trailing: Icon(Icons.access_time_filled_rounded),
              textColor: Colors.amberAccent,
              hoverColor: Colors.blueAccent,


            );
        

      })



      )

    );
  }
}