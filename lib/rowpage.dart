import 'package:flutter/material.dart';

class Rowpage extends StatelessWidget {
  const Rowpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("new page") ,
        backgroundColor: Colors.blue,


      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
          
              ),
          
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              )
            ],
          ),
          SizedBox(height: 20,),

                    Row(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
          
              ),
          
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              )
            ],
          ),
        ],
      ),



    );
  }
}