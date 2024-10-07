import 'package:animated_icon/animated_icon.dart';
import 'package:flutter/material.dart';

class Animate extends StatefulWidget {
 
   Animate({super.key});

  @override
  State<Animate> createState() => _AnimateState();
}

class _AnimateState extends State<Animate>  with SingleTickerProviderStateMixin {

// late AnimationController iconcontroller;

late AnimationController iconcontroller;
bool isPlaying = false;

void _handleOnPressed() {
  setState(() {
    isPlaying = !isPlaying;
    isPlaying
        ? iconcontroller.forward()
        : iconcontroller.reverse();
  });
}


@override
  void initState() {
    iconcontroller = AnimationController(
          vsync: this,
          duration: Duration(milliseconds: 400),
          reverseDuration: Duration(milliseconds: 400),
        );
    super.initState();

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
     IconButton(
  iconSize: 150,
  splashColor: Colors.greenAccent,
  icon: AnimatedIcon(
    icon: AnimatedIcons.play_pause,
    progress: iconcontroller,
  ),
  onPressed: () => _handleOnPressed(),
)
      // Container(


      //   controller = iconcontroller;
      //   child: AnimateIcon(
      //     onTap: (){},
      //    iconType: IconType.continueAnimation,
      //    height: 200,
      //    width: 200,
      //    color: Colors.blueAccent,
      //     animateIcon: AnimateIcons.add,
          
      //     ),
      // )
      );
    
  }
}