import 'package:flutter/material.dart';

class Mygriedview extends StatefulWidget {
  const Mygriedview({Key? key}) : super(key: key);

  @override
  State<Mygriedview> createState() => _MygriedviewState();
}

class _MygriedviewState extends State<Mygriedview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: GridView.builder(
      scrollDirection:Axis.vertical,
      itemCount: 101,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
    ),
        itemBuilder: (context,index){
        return Container(
          height: 100,
          width: 100,
          child: Center(child: Text("$index",style: TextStyle(fontSize: 20,),)),
          color: index % 2 == 0 ? Colors.black45 : Color(0xffa9cfc0),
        );
        }),
    );
  }
}
