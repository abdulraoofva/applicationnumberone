import 'dart:async';

import 'package:applicationnumberone/tabbarchats.dart';
import 'package:applicationnumberone/tapbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), (){
       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Tapbarpage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          
          padding: const EdgeInsets.only(top: 400),
          child: Column(
            children: [
              FaIcon(FontAwesomeIcons.whatsapp,color: Colors.greenAccent,size: 50,),
              Text("WhatsApp",style: TextStyle(color: Colors.greenAccent,fontSize: 20),),
              Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30,),
                  Text("Powered By Meta",style: TextStyle(color: Colors.blue),),
                  FaIcon(FontAwesomeIcons.meta)
                ],
              )
            ],
          ),
        ),
      ),
      


    );
  }
}