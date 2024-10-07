import 'package:flutter/material.dart';

class Newpage extends StatelessWidget {
  Newpage({super.key,required this.email2});
  String email2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(email2),



    );
  }
}