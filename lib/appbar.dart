import 'package:flutter/material.dart';
class appbarr extends StatefulWidget {
  const appbarr({Key? key}) : super(key: key);

  @override
  State<appbarr> createState() => _appbarrState();
}

class _appbarrState extends State<appbarr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        actions: [
          Icon(Icons.alarm_add_sharp,size: 40,)
        ],
        leading: Icon(Icons.menu),
        elevation: 50,
        centerTitle: true,
        title: Text('Application',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,fontSize:30),
         textAlign: TextAlign.center,
        ),
      ),
      body:Center(
        child: Text('Hello World',textDirection: TextDirection.rtl,),
      )
    );
  }
}
