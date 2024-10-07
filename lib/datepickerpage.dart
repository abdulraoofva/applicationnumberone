import 'package:flutter/material.dart';

class Timepickerpage extends StatefulWidget {
  const Timepickerpage({super.key});

  @override
  State<Timepickerpage> createState() => _TimepickerpageState();
}

class _TimepickerpageState extends State<Timepickerpage> {
  final datecontroller =TextEditingController();

  DateTime selected =DateTime.now();
  DateTime initial=DateTime(2000);
  DateTime last = DateTime(2025);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: datecontroller,
              decoration: InputDecoration(
                labelText: 'datepicker',
                border: OutlineInputBorder()
              ),
              
              
            ),
          ),
          ElevatedButton(onPressed: (){
            DisplayDatePicker(context);
          }, child: Text("Pick Date"),style: ElevatedButton.styleFrom(backgroundColor: Colors.red,minimumSize: Size(20, 70)),),
        ],
      ),
      
      





    );
  }
  Future DisplayDatePicker(BuildContext context)async{
    var date= await showDatePicker(context: context, firstDate: initial, lastDate: last);


  if (date!=null)
  {
    setState(() {
      datecontroller.text=date.toLocal().toString().split(" ")[0];
      
    });
  }
  }



}