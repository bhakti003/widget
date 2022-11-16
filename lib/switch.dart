

import 'dart:ffi';


import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class SwichDemo extends StatefulWidget {
  const SwichDemo({Key? key}) : super(key: key);

  @override
  State<SwichDemo> createState() => _SwichDemoState();
}

class _SwichDemoState extends State<SwichDemo> {
  bool pinned = false;
  bool snap = false;
  bool floating = false;
  bool star = false;
  var rating;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                Text('Pinned'),
                Switch(
                    value: pinned, onChanged: (value){
                     setState((){
                       pinned = value;
                     });
                },),
                Text('Snap'),
              Switch(value: snap, onChanged: (value){
                setState((){
                  snap = value;
                });
              }),
            GestureDetector(onTap: (){
              setState(() {
                star = !star;
              });
            },
                child: Icon(star
                          ?Icons.star
                          :Icons.outbond_outlined,
                  color: Colors.red,
                )),
            RatingBar.builder(
                allowHalfRating: true,
                itemBuilder: (context,index){
              return Icon(Icons.star,color: Colors.blue,);
            },  onRatingUpdate: (value){
              setState(() {
                rating = value;
              });
            }),
            IconButton(icon: Icon(Icons.ac_unit_outlined),tooltip: 'Icon Button',
                onPressed: null),
            IconButton(onPressed: null, icon: Icon(Icons.image,shadows: [Shadow(color: Colors.grey,offset: Offset(0, 2),blurRadius: 0.2)],)),
            Container(height: 50,width: 50,decoration:BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.only(topLeft: Radius.circular(10))),)
         ],
        ),
      ),
    );
  }
}
