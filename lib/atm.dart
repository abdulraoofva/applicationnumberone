import 'package:flutter/material.dart';

class Atmcard extends StatelessWidget {
  const Atmcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 200,
              width: 400,
              color: Color.fromARGB(229, 101, 83, 212),
              
              
            ),
          ),

          Positioned(
            top: 360  ,
            
            child: Row(
              children: [
                 SizedBox(width: 20,),
                Icon(Icons.catching_pokemon_sharp,color: Color.fromARGB(255, 214, 113, 189),),
                 SizedBox(width: 5,),
                Text('Pokemon bank',style:TextStyle(color: Colors.black,fontSize: 15)),
                SizedBox(width: 190,),
                Icon(Icons.wifi_2_bar_sharp,color: Colors.black,),
              ],
            ),
          ),
          Positioned(
            top: 430,
            child: Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.dashboard_customize_sharp,color: Color.fromRGBO(243, 124, 33, 1),),
                SizedBox(width: 290,),
                Icon(Icons.map,color: Color.fromRGBO(243, 124, 33, 1,)),
              ],
            
            ),
          ),

          Positioned(
            top: 480,
            child: Row(
              children: [
                SizedBox(width: 120,),
                Text("3456  2345  7861",style: TextStyle(fontSize: 20),)
              ],
            
            ),
          ),
          Positioned(
            top: 530,
            child: Row(
              children: [
                SizedBox(width: 20,),
                Text("ANAKIN SKYWALKER",style: TextStyle(fontSize: 20),)
              ],
            ),
          )
          
          


        ],


      ),

      
    );
  }
}