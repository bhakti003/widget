// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:table_calendar/table_calendar.dart';
// class DemoDate extends StatefulWidget {
//   const DemoDate({Key? key}) : super(key: key);
//
//   @override
//   State<DemoDate> createState() => _DemoDateState();
// }
//
// class _DemoDateState extends State<DemoDate> {
//  String adddate = DateFormat("EEE,d MMMM yyyy").format(DateTime.now());
//  String addtime = DateFormat("hh:mm:ss a").format(DateTime.now());
//  late CalendarController _controller;
//  @override
//   void initState() {
//    _controller = CalendarController();
//    super.initState();
//   }
//  @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:  Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//               Center(
//                 child: Text(
//                  adddate.toString(),style: TextStyle(fontSize: 20),
//                 ),
//               ),
//           Text(addtime.toString()),
//           GestureDetector(onTap: (){
//
//           },
//               child: Icon(Icons.date_range,size: 30,))
//       ],
//       ),
//     );
//   }
// }
