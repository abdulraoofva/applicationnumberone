import 'package:flutter/material.dart';

class Spotify2 extends StatelessWidget {
  Spotify2({super.key});

  List<String> images=[
    "https://pics.craiyon.com/2023-07-01/fbfe86f953914deb85e49146efb05aa0.webp",
    "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da8455a4a9fa2f8b4aa16eaf22a8",
    "https://i.scdn.co/image/ab67616d00001e02dbe494d0433fb6ddd7387b81",
    "https://pro2-bar-s3-cdn-cf4.myportfolio.com/dbea3cc43adf643e2aac2f1cbb9ed2f0/f14d6fc4-2cea-41a2-9724-a7e5dff027e8_rw_1200.jpg?h=60e8fb45f75e1a2612c53a4f2174997c",
    "https://i.guim.co.uk/img/media/57667592031b5a64dfb27b227978f44bf1fde6e0/0_0_3301_3139/master/3301.jpg?width=465&dpr=1&s=none",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREFyJSVLqeW-Nniqmukw8tAOsQXJWHuv4ivw&s",


  ];
  List<String> names=[
    "Romantic","Sad","Happy","WYNK Studio","Kids Music","Party"
  ];
  List<String> banners=["Romantic","Sad Songs","Happy","WYNK Studio","Kids Music","Party"];

  List<Color> bannercolors=[
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
    shape: RoundedRectangleBorder(),
    backgroundColor: Colors.black,
     leading: IconButton(onPressed: (){
        
              
            }, icon: Icon(Icons.backspace_sharp,size: 25,),color: Colors.white,iconSize: BorderSide.strokeAlignCenter,),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("SKIP",style: TextStyle(color: Colors.white),),
              ),
            ],
            
            

   ),
body: Container(
  height: double.infinity,
  decoration: BoxDecoration(
    color: Colors.black
  ),
  child: Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Flavors Of Music",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      Expanded(
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 6, itemBuilder: (BuildContext context, int index)
        {
          return
          
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Stack(
               children: [
                 Container(
                  
            
                  height: 150,
                   child: 
                       Image(image: NetworkImage(images[index])),
                       
                      
                 ),
                 Positioned(
                  top: 100,
                  left: 35,



                  child: Text(banners[index],style: TextStyle(color: bannercolors[index],fontWeight: FontWeight.bold),),),
                  
               ],
             ),
              Padding(
                
                     padding: const EdgeInsets.all(4.0),
                     child: Padding(
                      
                       padding: const EdgeInsets.only(left: 15),
                       child: Text(names[index],style: TextStyle(fontSize: 10,color: Colors.white,),),
                     ),
                   ),
      
           ],
         );
          
        
        
        }),
      )
    ],
  ),





),
      





    );
  }
}