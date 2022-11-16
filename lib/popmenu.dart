import 'dart:ffi';

import 'package:flutter/material.dart';
class popmenu extends StatefulWidget {
  const popmenu({Key? key}) : super(key: key);

  @override
  State<popmenu> createState() => _popmenuState();
}

class _popmenuState extends State<popmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       actions: [PopupMenuButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
         itemBuilder: (context) => [
         PopupMenuItem(
             value: 1,
             child: Row(children: [
           Icon(Icons.account_box,color: Colors.black54,),
           SizedBox(width: 10,),
           Text("Account"),],)),

           PopupMenuItem(
               value: 2,
               child: Row(children: [
                 Icon(Icons.account_box,color: Colors.black54,),
                 SizedBox(width: 10,),
                 Text("Account1"),],)),

           PopupMenuItem(
               value: 3,
               child: Row(children: [
                 Icon(Icons.account_box,color: Colors.black54,),
                 SizedBox(width: 10,),
                 Text("Account2"),],)),
       ],
           elevation: 2,offset: Offset(0, 50),color: Colors.black54,splashRadius: 0.5),],
     ),
    );
  }
}
