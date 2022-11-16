import 'package:flutter/material.dart';
class scroller extends StatefulWidget {
  const scroller({Key? key}) : super(key: key);

  @override
  State<scroller> createState() => _scrollerState();
}

class _scrollerState extends State<scroller> {
  List item = List.generate(30, (index) => "Item $index",);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scroller Bar'),
      ),
      body: Container(
        child: Scrollbar(
          //scrollbarOrientation: ,

          child: ListView.builder(itemBuilder: (context,index){
                return Card(
                  color: Colors.grey,
                  child: Material(
                    child: ListTile(
                      title: Text(item[index]),
                      tileColor: Colors.grey,
                    ),
                  ),
                );
          },
            itemCount: item.length,
          ),
         // radius: Radius.circular(200),
          //thickness: 50,
         // hoverThickness: 50,
          isAlwaysShown: true,
          showTrackOnHover: true,
        ),
      ),
    );
  }
}
