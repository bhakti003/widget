//
//
//
//
// import 'package:flutter/material.dart';
//
// class button extends StatefulWidget {
//   const button({Key? key}) : super(key: key);
//
//   @override
//   State<button> createState() => _buttonState();
// }
//
// class _buttonState extends State<button> {
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }
//
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Application',style: TextStyle(fontSize: 30),),
//         leading: Icon(Icons.menu),
//         centerTitle:true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//
//
//           children: [
//           FlatButton(onPressed: (){
//             print('Hello');
//           }, child: Text('FlatButton'),
//           color: Colors.grey,),
//
//             RaisedButton(onPressed: () {
//               print("Maill");},child: Text('Maill'),
//             ),
//
//             RaisedButton(onPressed: () {},child: Icon(Icons.mail),),
//
//
//             MaterialButton(onPressed: () {
//               print('Hello Flutter');
//             }, child: Text("Material Button")),
//
//             IconButton(onPressed: () { }, icon: Icon(Icons.add),),
//
//             RaisedButton(
//               child: new Text('Javatpoint'),
//               color: Colors.lightGreen,
//               onPressed: () {/** */},
//             ),
//             FloatingActionButton(onPressed: () { },child: Icon(Icons.accessibility_new_outlined),)
//           ],
//         ),
//       ),
//     );
//   }
// }
// // // Flat Button
// // // Raised Button
// // // Floating Button
// // // Drop Down Button
// // // Icon Button
// // // Inkwell Button
// // // PopupMenu Button
// // // Outline Button