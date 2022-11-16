import 'package:flutter/material.dart';
class columns extends StatefulWidget {
  const columns({Key? key}) : super(key: key);

  @override
  State<columns> createState() => _columnsState();
}

class _columnsState extends State<columns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Text('Column Example'),
      ),
      body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       // mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        //verticalDirection: VerticalDirection.up,
        children: [
          Row(
            children: [
              Container(

                height: 100,
                width: 100,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.brown,
                    border: Border.all(width: 5,color: Colors.black),
                    shape: BoxShape.rectangle,
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black38,
                        offset:Offset(6.0,6.0),
                      )
                    ]
                ),
              ),
              Container(
                height: 100,
                width: 100,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.brown,
                    border: Border.all(width: 5,color: Colors.black),
                    shape: BoxShape.rectangle,
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black38,
                        offset:Offset(6.0,6.0),
                      )
                    ]
                ),
              ),
              Container(
                height: 100,
                width: 100,
                //padding: EdgeInsets.all(10),
                //margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.brown,
                    border: Border.all(width: 5,color: Colors.black),
                    shape: BoxShape.rectangle,
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black38,
                        offset:Offset(6.0,6.0),
                      )
                    ]
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(

                height: 100,
                width: 100,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.brown,
                    border: Border.all(width: 5,color: Colors.black),
                    shape: BoxShape.rectangle,
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black38,
                        offset:Offset(6.0,6.0),
                      )
                    ]
                ),
              ),
              Container(
                height: 100,
                width: 100,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(width: 5,color: Colors.black),
                    shape: BoxShape.circle,
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black38,
                        offset:Offset(6.0,6.0),
                      )
                    ]
                ),
              ),
              Container(
                height: 100,
                width: 100,
                //padding: EdgeInsets.all(10),
                //margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.brown,
                    border: Border.all(width: 5,color: Colors.black),
                    shape: BoxShape.rectangle,
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black38,
                        offset:Offset(6.0,6.0),
                      )
                    ]
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(

                height: 100,
                width: 100,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.brown,
                    border: Border.all(width: 5,color: Colors.black),
                    shape: BoxShape.rectangle,
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black38,
                        offset:Offset(6.0,6.0),
                      )
                    ]
                ),
              ),
              Container(
                height: 100,
                width: 100,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.brown,
                    border: Border.all(width: 5,color: Colors.black),
                    shape: BoxShape.rectangle,
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black38,
                        offset:Offset(6.0,6.0),
                      )
                    ]
                ),
              ),
              Container(
                height: 100,
                width: 100,
                //padding: EdgeInsets.all(10),
                //margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.brown,
                    border: Border.all(width: 5,color: Colors.black),
                    shape: BoxShape.rectangle,
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black38,
                        offset:Offset(6.0,6.0),
                      )
                    ]
                ),
              ),
            ],
          ),
        ],
      ),

    );
  }
}
