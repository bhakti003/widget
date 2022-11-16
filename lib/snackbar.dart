import 'package:flutter/material.dart';
class SnackbarDemo extends StatefulWidget {
  const SnackbarDemo({Key? key}) : super(key: key);
  @override
  State<SnackbarDemo> createState() => _SnackbarDemoState();
}

class _SnackbarDemoState extends State<SnackbarDemo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
        child: GestureDetector(onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(
            children: [
              Icon(Icons.thumb_up),
              SizedBox(width: 10,),
              Text('hello!!'),
            ],
          ),
              action: SnackBarAction(label: 'Ok', onPressed: (){})),);
        },
          child: Container(height: 40,
          width:80,
          color: Colors.white,
            child: Center(child: Text('Click')),
          ),
        ),
      ),

      // body: Center(
//   child: GestureDetector(
//     onTap: (){
//
//       snackBar =  SnackBar(content: Row(
//        children: [
//          Icon(Icons.thumb_up),
//          SizedBox(width: 5,),
//          Text('Hello '),
//        ],
//      ),
//           action: SnackBarAction(label: 'Ok', onPressed: (){}),);
//      ScaffoldMessenger.of(context).showSnackBar(snackBar);
//
//     },
//     child: Container(
//       height: 45,
//       width: 100,
//       color: Colors.red,
//
//       child: Center(child: Text('Show Snackbar')),
//     ),
//   ),
// ),

    );
  }
}



