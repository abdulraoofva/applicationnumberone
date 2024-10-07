import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousalimage extends StatelessWidget {
  const Carousalimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: CarouselSlider( options: CarouselOptions(
          autoPlayCurve: Curves.bounceOut,
          clipBehavior: Clip.hardEdge,
          autoPlayAnimationDuration:Duration(seconds: 1),
          initialPage: 2,
          viewportFraction: 1,
          autoPlay: true),
        items: [
          Container(
            
            width: double.infinity,
            child: Image.network("https://iso.500px.com/wp-content/uploads/2018/05/Blog-marketplace-getty500px-48429366-nologo-3000x2000.png",fit: BoxFit.fill,)),
          Container(
            width: double.infinity,
        
        
        
            child: Image.network("https://d38b044pevnwc9.cloudfront.net/cutout-nuxt/enhancer/2.jpg",fit: BoxFit.fill,)),
        
        
        
            Container(
              width: double.infinity,
              
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUTLOonH9YSWLn7zu0kxLFIkAhcVPgk2cdSw&s",fit: BoxFit.fill,))
          
        
        ],
        ),
      )

    );
  }
}