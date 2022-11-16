import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(MyAppp());
}

class MyAppp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learning',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState()
  {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  List items = List.generate(30, (index) => "Child item $index ");
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Flutter Scrollbar"),
      ),
      body:Container(
          margin: EdgeInsets.all(10),
          child: Scrollbar(
            child: ListView.builder(
              itemBuilder:(context, index) {
                return Card(
                  child: Material(
                    child: ListTile(
                      title: Text(items[index]),
                      tileColor: Colors.yellow,
                    ),
                  ),
                );
              },
              itemCount: items.length,
            ),
            isAlwaysShown: true,
            thickness: 10,
          )
      ),
    );
  }
}