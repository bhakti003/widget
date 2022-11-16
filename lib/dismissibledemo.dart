import 'package:flutter/material.dart';
class DismissibleDemo extends StatefulWidget {
  const DismissibleDemo({Key? key}) : super(key: key);

  @override
  State<DismissibleDemo> createState() => _DismissibleDemoState();
}

class _DismissibleDemoState extends State<DismissibleDemo> {
  List items = List.generate(10, ( int index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.separated(
        itemCount: items.length,
      //  padding: EdgeInsets.symmetric(vertical: 16),
        itemBuilder:(BuildContext context,int index){
          return Dismissible(
            direction: DismissDirection.horizontal,

              background: Container(color: Colors.blue,child: Icon(Icons.check),),
              secondaryBackground: Container(color: Colors.red,child: Icon(Icons.cancel),),
              key: ValueKey(items[index]),
              onDismissed: (DismissDirection direction){
                setState(() {
                  items.removeAt(index);
                });
              },
              child: ListTile(
                title: Text('Item${items[index]}'),
              ));
        }, separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 3,); }, ));
  }
} 
