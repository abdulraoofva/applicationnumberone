import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: InkWell(
        onTap: () {
          showsheet(context);
          
           
        },
            

        child: Container(
          // height: double.infinity,
          child: Image.asset("asset/7.jpg",height: 100,width: 100,)
        ),
      ),




    );
  }
  void showsheet(BuildContext context){
showModalBottomSheet(context: context, builder: (context){
return Container(
  height: 200,
  child: Column(
    
    // mainAxisSize: MainAxisSize.min,
    children: [
      Text("Share Now",style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold),),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            FaIcon(FontAwesomeIcons.galacticRepublic,size: 50,),
            SizedBox(width: 20,),
            FaIcon(FontAwesomeIcons.galacticSenate,size: 50,),
            SizedBox(width: 20,),
            FaIcon(FontAwesomeIcons.bluetooth,size: 50,color: Colors.blue,),
          ],
        
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            FaIcon(FontAwesomeIcons.facebook,size: 50,color: Colors.blueAccent,),
             SizedBox(width: 20,),
            FaIcon(FontAwesomeIcons.amazon,size: 50,),
            SizedBox(width: 20,),
            FaIcon(FontAwesomeIcons.rebel,size: 50,color: Colors.orange,),
            SizedBox(width: 20,),
            FaIcon(FontAwesomeIcons.amazonPay,size: 50,color: Colors.blue,),
        
          ],
        ),
      )
    ],
    

  ),
  
);
});
  }
}