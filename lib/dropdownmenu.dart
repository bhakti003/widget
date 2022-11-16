import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class dropdownmenu extends StatefulWidget {
  const dropdownmenu({Key? key}) : super(key: key);

  @override
  State<dropdownmenu> createState() => _dropdownmenuState();
}

class _dropdownmenuState extends State<dropdownmenu> {
  var item;
  var movieList =['Item 1','Item 2','Item 3','Item 4','Item 5','Item 6',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(itemBuilder: (context)=>[PopupMenuItem(value:1,child: Row(children: [ Text('star'),],)),
            PopupMenuItem(value:2,child: Row(children: [ Text('star1'),],)),
            PopupMenuItem(value:3,child: Row(children: [ Text('star'),],)),
            PopupMenuItem(value:4,child: Row(children: [ Text('star'),],)),
            PopupMenuItem(value:5,child: Row(children: [ Text('star'),],))],
          ),
          //Icon(Icons.menu),
    ],
      ),

         body: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               SingleChildScrollView(
                 child: Center(
                   child: DropdownButton
                     (
                        elevation: 10,
                        hint: Text("Enter some item"),
                        dropdownColor: Colors.red,
                        icon: Icon(Icons.keyboard_arrow_down),
                        isExpanded: false,
                        // underline: Container(),
                        items: movieList
                            .map(
                                (value) => DropdownMenuItem<String>(value: value, child: Text(value)))
                            .toList(),
                        value: item != null ? item : null,
                        onChanged: (value) {
                          item = value;
                          setState(() {});
                        }),
                 ),
               ),

             ],
           ),

    );
  }
}
