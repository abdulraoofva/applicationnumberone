import 'package:flutter/material.dart';

class Spotify extends StatelessWidget {
   Spotify({super.key});
  List <String> images=[
    "https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO3r3n5S-default.jpg",
    "https://i.scdn.co/image/ab6761610000e5eb1ba8fc5f5c73e7e9313cc6eb",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8MKaxBrb7gBU9RfiKYaSB2tEiOLOQUApsFQ&s",
    "https://i.scdn.co/image/ab6761610000e5ebc36dd9eb55fb0db4911f25dd",
    // "https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO2QLsVW-default.jpg"
    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQkw8RByHx6DQECea8L2jkxCWplOSZI9PpVKIR_dufvbj4oQWPW",
    "https://i.scdn.co/image/ab67616d0000b273629dc9e2e3bc20bbd7d92e4a",
    "https://i.scdn.co/image/ab6761610000e5eba00b11c129b27a88fc72f36b",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsau6uvCirLY80JlvqDqkLj65QTkCtbxnAww&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlb9sYWl-SgUorOToszz2N4QdJ72thWmYMgg&s",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Ed_Sheeran-6886_%28cropped%29.jpg/1200px-Ed_Sheeran-6886_%28cropped%29.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Zayn_Wiki_%28cropped%29.jpg/640px-Zayn_Wiki_%28cropped%29.jpg",

    "https://i.scdn.co/image/ab67616d0000b273dafd4b9261a1ab9acd53a53d",
    "https://upload.wikimedia.org/wikipedia/commons/7/72/Justin_Timberlake_by_Gage_Skidmore.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/3/32/Pulitzer2018-portraits-kendrick-lamar.jpg",
    "https://i.scdn.co/image/ab6761610000e5ebdf9a1555f53a20087b8c5a5c",



  ];
  List<String> names=["One Republic","Coldplay","Ozzy Osbourne","Bruno Mars","Papa Roach","Justin Beiber","Eminem","Macklemore","Shawn Mendes","Ed Sheeran","Zayn Malik","Backstreet Boys","Justin Timberlake","Kendric Lamar","Metro Boomin"];

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
      color: Colors.black,
    ),
    

     child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Choose 3 or more artists you love ",style: TextStyle(color: Colors.white,fontSize: 20),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: TextField(
            
                            // act
                            
                            
                            
                            // cursorColor: Colors.green,
                            
                            decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 140, 139, 137), filled: true,
                              prefixIcon: Icon(Icons.search,),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
          
                              ),
                              hintText: "Search",
                              hintStyle: TextStyle(color: Colors.white),
                              
                            ),
                          ),
        ),
                        SizedBox(height: 15,),
                        


        
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemCount: 15, itemBuilder: (BuildContext context,int index){
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(backgroundImage: NetworkImage(images[index]),radius: 28,),
                  ),
                  Text(names[index],style: TextStyle(color: Colors.white),),
                  
            
                ],
              );
            }),
          ),
        ),
         ElevatedButton(onPressed: (){}, child: Text("Submit",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.grey,minimumSize: Size(350, 50),shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(12) ) ),),
        
      ],
      
     ),
     
   ),

      
    );
    
  }
}