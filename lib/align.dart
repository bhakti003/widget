import 'package:flutter/material.dart';
class align extends StatefulWidget {
  const align({Key? key}) : super(key: key);

  @override
  State<align> createState() => _alignState();
}

class _alignState extends State<align> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration( image: DecorationImage(image: AssetImage('assets/image2.png'),fit: BoxFit.fill)
          ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child:Image.asset('assets/image3.jpeg')
          ),
          Align(
            
              alignment: Alignment.topCenter,
              child:Image.asset('assets/image2.png')
          )
        ],
      ),
    );
  }
}
