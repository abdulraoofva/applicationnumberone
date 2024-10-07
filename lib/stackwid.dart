import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stackwid extends StatelessWidget {
  const Stackwid({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Center(
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
            Positioned(
              top: 40,
              left: 40,
              child: Container(
                height:100,
                width: 100,
                color: Colors.yellowAccent,
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.black,
              
              ),
            )
          ],
        ),
      )
        
         

        
      );
        
        
      





      
    
  }
}