import 'package:flutter/material.dart';
class stack extends StatefulWidget {
  const stack({Key? key}) : super(key: key);

  @override
  State<stack> createState() => _stackState();
}

class _stackState extends State<stack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Satck'),
      ),
      body: Stack(
        children: [
          Positioned(
              top: 5,left: 10,
              child: Container(
            height: 100,
            width: 100,
            color: Colors.grey,
          )),
          Positioned(top:50,left:60,child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
          )),
          Positioned(top: 90,left: 90,
              child: GestureDetector(onPanUpdate: (details){
                setState(() {
                });
              },
                  child: Container(height: 100,width: 100,color: Colors.indigo,)))
        ],
      )
    );
  }
}
