import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calls extends StatelessWidget {
   Calls({super.key});
  List<String> images=[
    "https://easy-peasy.ai/cdn-cgi/image/quality=80,format=auto,width=700/https://fdczvxmwwjwpwbeeqcth.supabase.co/storage/v1/object/public/images/50dab922-5d48-4c6b-8725-7fd0755d9334/3a3f2d35-8167-4708-9ef0-bdaa980989f9.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHmuAZcLa47gQwd8wk-N-FOmgd1vtn5kKN8XTahrvCTlmAZVRMW6zsPvzHNSFXRyG8LDU&usqp=CAU",
    "https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg",
    "https://images.pexels.com/photos/4965007/pexels-photo-4965007.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/2876486/pexels-photo-2876486.png?cs=srgb&dl=pexels-dshanp-2876486.jpg&fm=jpg",
    "https://images.pexels.com/photos/904332/pexels-photo-904332.jpeg?cs=srgb&dl=pexels-edson-habacuc-rafael-317292-904332.jpg&fm=jpg",
    "https://images.pexels.com/photos/13743087/pexels-photo-13743087.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/897817/pexels-photo-897817.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
  ];
  List<String>names=[
    "Alan","Akash","Albin","Albert","Sharon","Albert","Abinav","Johns"

  ];
  List<String> chats=["Yesterday, 7:50 AM","August 24, 10:20 AM","Ausgust 12, 10 :23 AM","Ausgust 11, 10 :23 AM","Ausgust 10, 10 :23 AM","Ausgust 10, 09 :13 AM","July 12, 10 :23 AM","july 10, 08 :01 AM"];
  List<IconData> icon=[
    Icons.video_call,
    Icons.call,
    Icons.video_call,
    Icons.video_call,
    Icons.call,
    Icons.call,
    Icons.video_call,
    Icons.call

  ];


  
  // List<IconData> ico=[
  //   FontAwesomeIcons.
  // ] ;


  // List<String> notification=[
  //   "6","2","3","2","1","3","2","1"
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView.builder(itemBuilder: (BuildContext context, int index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side: BorderSide(color: Colors.white)),
            
            
            hoverColor: Colors.amberAccent,
            textColor: Colors.black,
            tileColor: Colors.white,
            title: Text(names[index]),//style: TextStyle(color: Colors.red),),
            leading: CircleAvatar(backgroundImage: NetworkImage(images[index])),
            subtitle: Text(chats[index]),
            trailing: IconButton(onPressed: (){}, icon: Icon(icon[index]),color: Colors.green,),
            
          
          ),
          
          
        );
        
      }, itemCount:names.length ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.call),
      backgroundColor: Colors.greenAccent,),

    );
  }
}