import 'package:flutter/material.dart';
import 'package:widget/List.dart';
//import 'package:widget/Listv.dart';
import 'package:widget/Listview.dart';
import 'package:widget/Row.dart';
import 'package:widget/appbar.dart';
import 'package:widget/button.dart';
import 'package:widget/popmenu.dart';
import 'package:widget/richtext.dart';
import 'package:widget/sliverappbar.dart';
import 'package:widget/sqflite/sqflite.dart';
import 'package:widget/switch.dart';
//import 'package:widget/textw.dart';

import 'alertdialogbox.dart';
import 'align.dart';
import 'banner.dart';
import 'bottom.dart';
import 'bottommodel_sheet.dart';
import 'clip.dart';
import 'column.dart';
import 'container.dart';
import 'cupertinoios.dart';
import 'custem_widget.dart';
import 'date_time.dart';
import 'dismissibledemo.dart';
import 'drawer.dart';
import 'dropdownmenu.dart';
import 'from/animation/hero_animation.dart';
import 'from/animation/implicit_animation_demo.dart';
import 'griedview.dart';
import 'image.dart';
import 'imagepicker.dart';
import 'padding.dart';
import 'page.dart';
import 'pageview.dart';
import 'radiobutton.dart';
import 'scroll.dart';
import 'snackbar.dart';
import 'stack.dart';
import 'tabbar.dart';
//import 'textfiled.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
// import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     home: DrawerDemo(),
    );
  }
}
//
// class ListViewExample extends StatefulWidget {
//   const ListViewExample({Key? key}) : super(key: key);
//
//   @override
//   State<ListViewExample> createState() => _ListViewExampleState();
// }
//
// class _ListViewExampleState extends State<ListViewExample> with SingleTickerProviderStateMixin{
//   List<String> movieList=['Kgf2','Kgf','Son of satyamurthy','Pushpa'];
//   PageController? pageController;
//   TabController? tabController;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     pageController=PageController(initialPage: 0);
//     tabController=TabController(length: 3, vsync: this);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         bottom:  TabBar(
//           onTap: (value){
//             tabController!.animateTo(value);
//           },
//             isScrollable: false,
//             indicatorColor: Colors.white,
//             controller: tabController,
//             tabs: [
//               Tab(
//                 child: Text("Chats",style: TextStyle(color: Colors.black),),
//               ),
//               Tab(
//                 child: Text("Status",style: TextStyle(color: Colors.black),),
//               ),
//               Tab(
//                 child: Text("Calls",style: TextStyle(color: Colors.black),),
//               )
//             ]),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: TabBarView(
//               controller: tabController,
//                 children: [
//                   Center(child:Text("Chats")),
//                   Center(child:Text("Status")),
//                   Center(child:Text("Calls"))
//                ]
//             ),
//           )
//         ],
//       )
      // body:ListView(
      //   children: [
      //     Text(movieList[0]),
      //     Text(movieList[1]),
      //     Text(movieList[2]),
      //     Text(movieList[3]),
      //   ],
      // )
      // body: GridView.builder(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     childAspectRatio: 0.5,
      //     mainAxisSpacing: 10,
      //     crossAxisSpacing: 10
      //   ),
      //   scrollDirection: Axis.vertical,
      //   itemBuilder: (context,index){
      //     return Text(movieList[index]);
      //   },
      //   itemCount: movieList.length,
      // ),
      // body: PageView.builder(
      //   controller: pageController,
      //   scrollDirection: Axis.horizontal,
      //   onPageChanged: (value){
      //     print(value);
      //     pageController!.jumpToPage(value);
      //   },
      //   itemBuilder: (context,index){
      //     return Center(child: Text(movieList[index]));
      //   },
      //   itemCount: movieList.length,
      // ),
      // body: ListView.builder(
      //   shrinkWrap: true,
      //   physics: NeverScrollableScrollPhysics(),
      //   scrollDirection: Axis.horizontal,
      //   itemBuilder: (context,index){
      //     return Text(movieList[index]);
      //   },
      //   itemCount: movieList.length,
      // ),
   // );
  //}
//}



