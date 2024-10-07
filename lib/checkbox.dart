import 'package:flutter/material.dart';

class Checkboxpage extends StatefulWidget {
  const Checkboxpage({super.key});

  @override
  State<Checkboxpage> createState() => _CheckboxpageState();
}

class _CheckboxpageState extends State<Checkboxpage> {
  bool? selected=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Checkbox(value: selected, onChanged: (bool? changedvalue){
        setState(() {
          selected=changedvalue;
        });
      }),



    );
  }
}