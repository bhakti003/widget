import 'dart:math';

import 'package:flutter/material.dart';

class ImplicitAnimationDemo extends StatefulWidget {
  const ImplicitAnimationDemo({Key? key}) : super(key: key);

  @override
  State<ImplicitAnimationDemo> createState() => _ImplicitAnimationDemoState();
}

class _ImplicitAnimationDemoState extends State<ImplicitAnimationDemo> with TickerProviderStateMixin {
  // var alignmentt = Alignment.topCenter;
  // var width=10.0;
  // var height=0.0;
  // var angle=0;
  // var scale=0;
  AnimationController? animationController;
  Animation<double>? colorAnim;
  bool isPressed=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 1));
    colorAnim=Tween<double>(begin: 0.0,end: pi*2).animate(animationController!);
    animationController!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation'),
      ),
      body: Column(
        children: [
          // AnimatedBuilder(animation: colorAnim!, builder: (context,widget){
          //   return Container(
          //     height: 300,
          //       width: 300,
          //       color: colorAnim!.value);
          // }),
          Expanded(
            child: FadeTransition(
              // scale: colorAnim!,
              // sizeFactor: colorAnim!,
              // axis: Axis.horizontal
              // position: colorAnim!,
              // turns: colorAnim!,
              opacity: colorAnim!,
              child: Container(
                child: Image.asset('assets/image.jpeg'),
              ),
            ),
          ),
      //     GestureDetector(onTap: (){
      //     setState(() {
      //       isPressed = !isPressed;
      //     });
      // },
      //       child: Container(
      //           height: 50,
      //           width: 50,
      //           color: Colors.orange,
      //           child: Center(child:
      //               AnimatedAlign(alignment: Alignment.bottomLeft, duration: Duration(seconds: 2),child: Text('Hello'),),)),
      //
      //     ),
        ],
      ),
      // body: Column(
      //   children: [
      //     // AnimatedAlign(alignment: alignment, duration: Duration(
      //     //   seconds: 2
      //     // ),child: Text("Pressed")),
      //     // AnimatedOpacity(
      //     //   // width: width,
      //     //   // height: height,
      //     //   opacity: height,
      //     //   duration: Duration(seconds: 1),child: Image.asset('assets/image.jpeg'),),
      //     Transform.rotate(angle: angle.toDouble(),child: Image.asset('assets/image.jpeg')),
      //     Transform.scale(scale: scale.toDouble(),child: Image.asset('assets/image.jpeg')),
      //     Align(
      //       alignment: Alignment.bottomRight,
      //       child: MaterialButton(
      //         onPressed: (){
      //           setState(() {
      //             angle+=45;
      //             scale+=1;
      //             // isPressed=!isPressed;
      //             // if(isPressed){
      //             //   color=Colors.red;
      //             // }
      //             // else{
      //             //   color=Colors.orange;
      //             // }
      //           });
      //         },
      //         child: Text("Change align"),
      //       ),
      //     ),
      //
      //   ],
      // ),
    );
  }
}