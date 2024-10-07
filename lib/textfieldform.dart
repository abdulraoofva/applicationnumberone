import 'package:flutter/material.dart';

class Formfield extends StatefulWidget {
  const Formfield({super.key});

  @override
  State<Formfield> createState() => _FormfieldState();
}

class _FormfieldState extends State<Formfield> {
  final formkey=GlobalKey<
  FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          Center(
            child: Form(
              key: formkey,
              child: Center(
                
                child: TextFormField(
                  validator: (value) {
                    if(value==null || value.isEmpty)
                    {
                      return "cannot be empty";
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
                                      prefixIcon: Icon(Icons.key),
                                      border: OutlineInputBorder(
                                        
                                      ),
                                      hintText: "enter your email",
                                    ),
                ),
              ),
            ),
          ),
          OutlinedButton(onPressed: (){
            if(formkey.currentState!.validate()){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("success")));
            }

          }, child: Text("SIGNUP"),style: OutlinedButton.styleFrom(foregroundColor: Colors.red),),
        ],
      ),
    );
  }
}