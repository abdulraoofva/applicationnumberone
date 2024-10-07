import 'package:applicationnumberone/datepickerpage.dart';
import 'package:applicationnumberone/spotify.dart';
import 'package:applicationnumberone/spotify2.dart';
import 'package:applicationnumberone/tabbarcalls.dart';
import 'package:applicationnumberone/tabbarchats.dart';
import 'package:applicationnumberone/tabbarcommunities.dart';
import 'package:applicationnumberone/tabbarstatus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tapbarpage extends StatelessWidget {
  const Tapbarpage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 45, 211, 164),
          title: Text("Whatsapp",style: TextStyle(color: Colors.black),),
          
          // leading: Padding(
          //   padding: const EdgeInsets.all(8.0),
            
          //   child: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.black,),
          // ),
          actions: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.camera),color: Colors.white,),
                  
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.magnifyingGlass),color: Colors.white,),
                ),
               PopupMenuButton(itemBuilder: (context)=>[
                PopupMenuItem(
                  value:1,
                  child: Row(
                    children: [
                      Icon(Icons.settings),
                      Text("Settings"),
                    ],
                  ),
                  
                  ),
                  PopupMenuItem(
                    value:2,
                     child: Row(
                      children: [
                        Icon(Icons.help),
                        Text("help")
                      ],
                     ),

                )
               ])

               
              ],
            )
          ],
          bottom: TabBar(
            // isScrollable: true,
            // tabAlignment: TabAlignment.center,
            // isScrollable: true,
            // padding: EdgeInsets.only(right: 10),
            tabs: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   children: [
                    Icon(Icons.people),
                    //  Text("Communities"),
                   ],
                 ),
               ),
              Row(
                children: [
                  Text("chats",),
                ],
              ),
          Row(
            children: [
              Text("Status"),
            ],
          ),Row(
            children: [
              Text("Calls",),
            ],
          ),
         
          
          ],),
          
        ),
        body: TabBarView(children: [Communities(),Chatpage(),StatusPage(),Calls()]),
      ),
    );
  }
}