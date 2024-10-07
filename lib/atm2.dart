import 'package:flutter/material.dart';

class Atm extends StatelessWidget {
  const Atm({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("asset/blue.jpg"),fit: BoxFit.fill,)
          ),
          height: 200,
          width: 400,
          // child: Image.network("https://img.freepik.com/free-vector/gradient-blue-background_23-2149333531.jpg"),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Icon(Icons.catching_pokemon_rounded,color: Color.fromRGBO(229, 12, 45, 1),),
              Text("ARRAKIS BANK",style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 195, 227, 12)),)
            ],),
            
           // Icon(Icons.map_outlined,size: 45,color: Color.fromARGB(255, 81, 81, 21),),
             Image.asset('asset/chip.jpg',width:35,height: 35,),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Text("2331  5434 4522",style: TextStyle(fontSize: 25,color: Colors.white),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("323",style: TextStyle(color: Colors.white),),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("456",style: TextStyle(color: Colors.white),),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("VALID",style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("TILL",style: TextStyle(color: Colors.white)),
                    ),
                    

                  ],
                  
                  
                  
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("04/27",style: TextStyle(color: Colors.white),),
                    )
                  ],
                  
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("ANAKIN SKYWALKER",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),

              ],

            )

          ],
          ),
          
          
          
          
          
        ),
      ),
    );
  }
}