import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

class Toastpage extends StatelessWidget {
  const Toastpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        children: [
          ElevatedButton(onPressed: (){
            MotionToast.success(description: Text("success"),title: Text("login"),toastDuration: Duration(microseconds: 600000),).show(context);
          }, child: Text("LOGIN"),style: ElevatedButton.styleFrom(backgroundColor: Colors.red,)),
         OutlinedButton(onPressed: (){
              MotionToast.error(description: Text("error"),title: Text("NO MATCHES FOUND!!")).show(context);
         }, child: Text("SIGNUP"),style: OutlinedButton.styleFrom(foregroundColor: Colors.amber),),

         FloatingActionButton(onPressed: (){
          MotionToast(description: Text("welcome ",style: TextStyle(color: Colors.amber),), primaryColor: Colors.blueAccent,width: 300,height: 100,secondaryColor: Colors.red,title: Text("WELCOME PAGE"),animationType: AnimationType.fromRight,).show(context);
         }, child: Text("LOGIN"),)
        ],




      ),
      




    );
  }
}