import 'package:flutter/material.dart';

class Timepickerpage1 extends StatefulWidget {
  const Timepickerpage1({super.key});

  @override
  State<Timepickerpage1> createState() => _Timepickerpage1State();
}

class _Timepickerpage1State extends State<Timepickerpage1> {
  final timecontroller=TextEditingController();


  TimeOfDay timeOfDay= TimeOfDay.now();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: timecontroller,
              decoration: const InputDecoration(
                    labelText: 'Time picker', border: OutlineInputBorder()),
              ),
          ),

            ElevatedButton(onPressed: (){
              DisplayTimePicker(context);

            }, child: Text("Pick Time"),style: ElevatedButton.styleFrom(backgroundColor: Colors.red,minimumSize: Size(20, 70)),),
        ],
      ),
      
    );
  }
  Future DisplayTimePicker(BuildContext context)async{
    var time= await showTimePicker(context: context, initialTime: timeOfDay);
    if(time!=null){
      setState(() {
        timecontroller.text="${time.hour}:${time.minute}";
      });
    }
  }
}