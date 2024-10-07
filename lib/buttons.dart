import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: (){}, child: Text("LOGIN"),style: ElevatedButton.styleFrom(backgroundColor: Colors.red,minimumSize: Size(20, 70)),),
          TextButton(onPressed: (){}, child: Text("LOGIN"),style: TextButton.styleFrom(foregroundColor: Colors.amber,backgroundColor: Colors.green),),
          IconButton(onPressed: (){}, icon: Icon(Icons.access_alarm),color: Colors.red,),
          OutlinedButton(onPressed: (){}, child: Text("SIGNUP"),style: OutlinedButton.styleFrom(foregroundColor: Colors.amber),),
          FloatingActionButton(onPressed: (){}, child: Text("LOGIN"),)

        ],
      ),
      
      

    

    );
  }
}