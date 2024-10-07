import 'package:flutter/material.dart';

class Imaget extends StatelessWidget {
  const Imaget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: 
      Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsIz4qZKTOplGKCIt860B8HP3mTBMZGACNFg&s'))
      // Image(image: AssetImage("asset/image.jpg"))
      // Image.asset('asset/image.jpg'),
    );
  }
}