import 'package:flutter/material.dart';

class Multiplechecks extends StatefulWidget {
  const Multiplechecks({super.key});

  @override
  State<Multiplechecks> createState() => _MultiplechecksState();
}

class _MultiplechecksState extends State<Multiplechecks> {
  bool? option1=false;
  bool?option2=false;
  bool?option3=false;
  bool? option4=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: Container(
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors:[ const Color.fromARGB(60, 255, 255, 255),
            Colors.yellowAccent],
          ),
          
        ),
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 50,),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Which amoung these are the features of dart?"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("inheritance"),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Checkbox(value: option1, onChanged:( bool? changedvalue1){
                    setState(() {
                      option1=changedvalue1;
                    });
                  // Checkbox(value: option2, onChanged: (bool? changedvalue2){
                  //   setState(() {
                  //     option2=changedvalue2;
                  //   });
                  // })
                  
                  }),
                ),
              ],
            ),
          ),
          
      
      
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("encapsulation"),
                  Checkbox(value: option2, onChanged: (bool? changedvalue2){
                  setState(() {
                    option2=changedvalue2;
                  });
                          }),
                ],
              ),
            ),
      
      
      
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("object"),
                  Checkbox(value: option3, onChanged: (bool? changedvalue3){
                  setState(() {
                    option3=changedvalue3;
                  });
                          }),
                ],
              ),
            ),
      
      
      
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("All of the above"),
                  Checkbox(value: option4, onChanged: (bool? changedvalue4){
                  setState(() {
                    option4=changedvalue4;
                  });
                          }),
                ],
              ),
            ),
      
      
      
      
      
      
             SizedBox(height: 20,),
                OutlinedButton(onPressed: (){}, child: Text("SUBMIT",),style: OutlinedButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.red,minimumSize:Size(250, 50) ),),
          
      
      
      
      
      
      
      
      
      
      
      
      
      
        ],
      ),
    ),



    );
  }
}