import 'package:applicationnumberone/credentials.dart';
import 'package:applicationnumberone/signup.dart';
import 'package:flutter/material.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          
        ),
        backgroundColor: const Color.fromARGB(255, 2, 74, 133),
        
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 60,)
           ,
            Center(child: Text("Brand Name",style: TextStyle(color: const Color.fromARGB(255, 235, 91, 139)),)),
            
          ],
          
        ),
        
        
        actions: [
          // Padding(
          //   padding: const EdgeInsets.only(right: 5),
          //   child: Image.asset("asset/nike.png",height: 50,width: 50,),
          // )
          Padding(
            padding: const EdgeInsets.only(right: 70,top: 10),
            child: Image.asset("asset/logo.jpg",height: 70,width: 70,),
          )
          
        ],

      ),

      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors:[ Color.fromARGB(255, 2, 74, 133),
            Colors.pink],
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
        
            SizedBox(height: 90,),
              Text("SOME TEXT OF YOUR CHOICE",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 50,),
              // Padding(
              //   padding: const EdgeInsets.all(15.0),
                
              //   child: TextField(
              //     decoration: InputDecoration(
              //       prefixIcon: Icon(Icons.email),
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(20.0),
              //       ),
              //       hintText: "EMAIL",
                
                
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(15.0),
              //   child: TextField(
              //     decoration: InputDecoration(
              //         prefixIcon: Icon(Icons.lock),
              //         suffixIcon: Icon(Icons.remove_red_eye),
              //         border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(20.0),
              //         ),
              //         hintText: "PASSWORD",
                  
                
              //   )),
              // ),
              
                
                  
                
              
              SizedBox(height: 20,),
              OutlinedButton(onPressed: (
                
              ){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Credentials()));
                
                 
              }, child: Text("Login",),style: OutlinedButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.red,minimumSize:Size(250, 50) ),),

              SizedBox(height: 20,),

              OutlinedButton(onPressed: (
                
              ){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Credentials1()));
                
                 
              }, child: Text("Register",),style: OutlinedButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.red,minimumSize:Size(250, 50) ),),
        
        
        
        
              SizedBox(height: 100,),
        
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text("Dont have an account",style: TextStyle(color: Colors.white),)),
                    ),
                    TextButton(onPressed: (){


                             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Credentials1()));


                    }, child: Text("Signup"),style: TextButton.styleFrom(foregroundColor: Colors.white,),),
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