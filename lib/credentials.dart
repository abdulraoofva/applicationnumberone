import 'package:applicationnumberone/signup.dart';
import 'package:flutter/material.dart';

class Credentials extends StatefulWidget {
  const Credentials({super.key});

  @override
  State<Credentials> createState() => _CredentialsState();
}

class _CredentialsState extends State<Credentials> {
  final formkey=GlobalKey<FormState>();
  final passkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          
        ),
        backgroundColor: Colors.pink,
        leading: IconButton(onPressed: (){
        
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Credentials()));
            }, icon: Icon(Icons.backspace_sharp,size: 25,),color: Colors.black,iconSize: BorderSide.strokeAlignCenter,),
        
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Icon(Icons.backspace_sharp),
            // SizedBox(width: 0,),
            Text("Back")
          ],
        ),
        actions: [
          // Padding(
          //   padding: const EdgeInsets.only(right: 5),
          //   child: Image.asset("asset/nike.png",height: 50,width: 50,),
          // )
          Padding(
            padding: const EdgeInsets.only(right: 15),
            
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
              Text("Lets Get Started?",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                
                child: Form(
                  key: formkey,
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      inputDecorationTheme: InputDecorationTheme(
                        errorStyle: TextStyle(color: Colors.white),
                      )
                      
                    ),
                    child: TextFormField(
                      validator: (value) {
                        if(value==null || value.isEmpty)
                        {
                          return "invalid Field";
                        }
                        else if(value.length<6)
                      {
                        return "value must contain 6 letters";
                    
                      }
                      else if(!value.contains(RegExp('[A-Z]'))){
                        return "must need an uppercase";
                      }
                      else if(!value.contains(RegExp("[1-9]"))){
                        return "there must be a digit";
                      }
                      else if(!value.contains(RegExp("[@,!,%,^,&,*,+]"))){
                        return "there should be special characters";
                      }
                      else{
                              
                      return null;
                      }
                        
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        hintText: "EMAIL",
                    
                    
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  key: passkey,
                  child: TextFormField(
                    validator: (valuepass) {
                      if(valuepass==null || valuepass.isEmpty){
                        return "password cannot be empty";
                      }
                      else if(valuepass.length<6){
                        return "passwordn must contain 6 characters ";
                      }
                      else
                      {
                        return null;
                      }
                      
                    },

                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        hintText: "PASSWORD",
                    
                  
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.circle_notifications_outlined,color: Colors.white,),
                    TextButton(onPressed: (){}, child: Text("Remember Me"),style: TextButton.styleFrom(foregroundColor: Colors.white,),),
        
                  ],
                  
                ),
              ),
              SizedBox(height: 20,),
              OutlinedButton(onPressed: (
                
              ){
                if(formkey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("login successfull")));
                }
                if(passkey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Success")));
                }
                 
              }, child: Text("Login",),style: OutlinedButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.red,minimumSize:Size(250, 50) ),),
        
        
        
        
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