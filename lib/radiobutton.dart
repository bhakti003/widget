import 'dart:ffi';

import 'package:flutter/material.dart';
class RadioButton extends StatefulWidget {
  const RadioButton({Key? key}) : super(key: key);
  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String? getItem = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Radio Button'),
        ),
        body:Column(
          children: [
            RadioListTile(value: 1, groupValue: getItem, onChanged: (value){
              setState((){

              });
            })
          ],
        )
    );
  }
}


// }
//
// class DropdownDemo extends StatefulWidget {
//   const DropdownDemo({Key? key}) : super(key: key);
//
//   @override
//   State<DropdownDemo> createState() => _DropdownDemoState();
// }
//
// class _DropdownDemoState extends State<DropdownDemo> {
//   List<String> movieList = ['Kgf', 'Pushpa', 'RRR'];
//   var item;
//   var selectedItem;
//   String? getItem='';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){},
//         backgroundColor: Colors.red,
//         child: Icon(Icons.add),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           OutlinedButton(
//               onPressed: (){}, child: Text("Submit here")),
//           MaterialButton(onPressed: (){},
//             color: Colors.red,
//             elevation: 10,
//             height: 40,
//             minWidth: 40,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20)
//             ),
//             child: Text("Submit here"),),
//
//           DropdownButton(
//               elevation: 10,
//               hint: Text("Enter some item"),
//               dropdownColor: Colors.red,
//               icon: Icon(Icons.add),
//               isExpanded: true,
//               // underline: Container(),
//               items: movieList
//                   .map(
//                       (value) => DropdownMenuItem<String>(value: value, child: Text(value)))
//                   .toList(),
//               value: item != null ? item : null,
//               onChanged: (value) {
//                 item = value;
//                 setState(() {});
//               }),
//           CheckboxListTile(
//               title: Text("Male"),
//               subtitle: Text("User"),
//               // trailing: Icon(Icons.add),
//               // leading: Icon(Icons.remove),
//               controlAffinity: ListTileControlAffinity.leading,
//               value: selectedItem != null ? selectedItem : false,
//               onChanged: (value) {
//                 selectedItem = value;
//                 setState(() {});
//               }),
//           RadioListTile(
//             value: "Male",
//             title: Text("Male"),
//             groupValue: getItem,
//             controlAffinity: ListTileControlAffinity.leading,
//             onChanged: (value){
//               setState((){
//                 getItem=value as String;
//               });
//             },
//           ),
//           RadioListTile(
//             value: "Female",
//             title: Text("Female"),
//             groupValue: getItem,
//             onChanged: (value){
//               setState((){
//                 getItem=value as String;
//               });
//             },
//           ),
//

//         ],
//       ),
//     );
//   }
// }

// class FirstPage extends StatefulWidget {
//   const FirstPage({Key? key}) : super(key: key);
//
//   @override
//   State<FirstPage> createState() => _FirstPageState();
// }
//
// class _FirstPageState extends State<FirstPage> {
//   @override
//   void initState() {
//     Timer(Duration(seconds: 3),(){
//       Navigator.push(context, MaterialPageRoute(builder: (context)=>MyuiDemo()));
//     });
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       body: Center(
//         child: FlutterLogo(),
//         // MaterialButton(
//         //   onPressed: () {
//         //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage(name:"Hello")));
//         //     // Navigator.of(context)
//         //     //     .push(CupertinoPageRoute(builder: (context) => SecondPage()));
//         //   },
//         //   child: const Text("Go to second"),
//         // ),
//       ),
//     );
//   }
// }
//
// class SecondPage extends StatefulWidget {
//    SecondPage({Key? key,this.name}) : super(key: key);
//   String? name;
//   @override
//   State<SecondPage> createState() => _SecondPageState();
// }
//
// class _SecondPageState extends State<SecondPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: MaterialButton(
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//           child: Text("Go Back ${widget.name}"),
//         ),
//       ),
//     );
//   }
// }7&&&