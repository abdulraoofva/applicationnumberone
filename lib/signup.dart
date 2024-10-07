import 'package:applicationnumberone/credentials.dart';
import 'package:flutter/material.dart';

class Credentials1 extends StatelessWidget {
  const Credentials1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      appBar: AppBar(//title: Text("Back"),
        shape: RoundedRectangleBorder(
          
        ),
        backgroundColor: Colors.pink,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(onPressed: (){
        
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Credentials()));
            }, icon: Icon(Icons.backspace_sharp,size: 15,),color: Colors.black,),
            // SizedBox(height: 70,),
            Flexible
            (  flex: 1,   child: Text("Back",)),
            
          ],
        ),
        // leading: Icon(Icons.backspace_sharp),
        actions: [
          // Padding(
          //   padding: const EdgeInsets.only(right: 5),
          //   child: Image.asset("asset/nike.png",height: 50,width: 50,),
          // )
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(backgroundImage: AssetImage("asset/logo.jpg"),),
          )
        ],

      ),

      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors:[ Colors.pink,
            Colors.blue],
          ),
          
        ),
        child: Column(
            children: [
              
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
                
              //   children: [
                  
              //     Icon(Icons.back_hand),
              //     Text("Go Back",style: TextStyle(color: Colors.white),),
                  
                 
              //     Padding(
              //       padding: const EdgeInsets.only(left: 150.0),
              //       child: Image.asset("asset/nike.png",height:50 ,width:50,),
              //     )
              //   ],
        
              // ),
        
            SizedBox(height: 60,),
              Text("Join Us Now !",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    hintText: "EMAIL",
                
                
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      hintText: "PASSWORD",
                  
                
                )),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Icon(Icons.circle_notifications_outlined,color: Colors.white,),
              //       TextButton(onPressed: (){}, child: Text("Remember Me"),style: TextButton.styleFrom(foregroundColor: Colors.white,),),
        
              //     ],
                  
              //   ),
              //),
              SizedBox(height: 20,),
              OutlinedButton(onPressed: (){}, child: Text("Login",),style: OutlinedButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.red,minimumSize:Size(250, 50) ),),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30,),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                
                    Expanded(child: Divider(thickness: 1,color: Colors.white,)),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Text("Social SignUp"),
                    ),
                    Expanded(child: Divider(thickness: 1,color: Colors.white,)),
                  ],
                )
              ),


             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 100,),

            
                
                 CircleAvatar(backgroundImage: AssetImage("asset/x.jpg"),),
                 SizedBox(width: 10,),

                 CircleAvatar(backgroundImage: AssetImage("asset/fb.png"),),
                 SizedBox(width: 20,),
                 CircleAvatar(backgroundImage: AssetImage("asset/google.png"),),

              ],
             ),
       
        
        
              SizedBox(height: 50,),
        
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text("Already a member?",style: TextStyle(color: Colors.white),)),
                    ),
                    TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Credentials()));
                    }, child: Text("Signin"),style: TextButton.styleFrom(foregroundColor: Colors.white,),),
                  ],
                ),
              )
        
        
        
              
            ],
        
        ),
      ),



    );
  }
}









// decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topRight,
//             end: Alignment.bottomRight,
//             colors: [Colors.pink, Colors.orange],
//           ),
//         ),