import 'package:applicationnumberone/atm2.dart';
import 'package:applicationnumberone/newpage.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  Loginpage({super.key});

TextEditingController emailcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Center(child: Text("HELLO THERE",style: TextStyle(fontSize: 25),)),
                      Text("Automatic identity varification code which enables you to varify identity"),
                      Image.network('https://img.lovepik.com/photo/45009/7677.jpg_wh300.jpg'),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30),
                        child: TextField(
                          controller: emailcontroller,
                          // act
                          
                          
                          
                          // cursorColor: Colors.green,
                          
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.key),
                            border: OutlineInputBorder(),
                            hintText: "enter your email",
                          ),
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
                        child: TextField(
                          // act
                          
                          
                          
                          // cursorColor: Colors.green,
                          
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.remove_red_eye_outlined),
                            border: OutlineInputBorder(),
                            hintText: "enter your password",
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      ElevatedButton(onPressed: ()
                      {
                        String email = emailcontroller.text;
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Newpage(email2: email,)));

                        
                      }, child: Text("Login")),
                      

        
          ],
        ),
      )


    );
  }
}