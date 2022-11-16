import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class cupertinpios extends StatefulWidget {
  const cupertinpios({Key? key}) : super(key: key);

  @override
  State<cupertinpios> createState() => _cupertinpiosState();
}

class _cupertinpiosState extends State<cupertinpios> {
  bool isSelected = false;
  double slidervalue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
                Switch(
                    activeColor: Colors.blueAccent,
                  //  thumbColor: Colors.white,
                   // trackColor: Colors.grey,
                    value: isSelected, onChanged: (value) {
                  setState(() {
                    isSelected = value;
                  });
                }),
              CupertinoSlider(
                  activeColor: Colors.red,
                  value: slidervalue, onChanged: (value){
                setState(() {
                  slidervalue = value;
                });
              }),
        ],
      ),
    );
  }
}
