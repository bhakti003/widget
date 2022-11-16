import 'package:flutter/material.dart';

class container extends StatefulWidget {
  const container({Key? key}) : super(key: key);

  @override
  State<container> createState() => _containerState();
}

class _containerState extends State<container> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            leading: Icon(Icons.menu),
            centerTitle: true ,
            title: Text('AppliCation',style: TextStyle(fontSize: 20,color: Colors.black),),
            actions: const [
              //Icon(Icons.delete),
              Icon(Icons.search)
            ],
          ),
          body: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 200,
                width: 200,
                child: Text('Hello',style: TextStyle(fontSize: 20),),

                decoration: BoxDecoration(
                  //shape: BoxShape.circle,
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(20),),
                  // color: Colors.red,
                  image:DecorationImage(image:AssetImage("assets/image.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(0.8,0.8)
                    )
                  ],
                ),
              ),
              SizedBox(width: 20,),
              Container(
                alignment: Alignment.center,
                height: 200,
                width: 200,
                child: Text('Hello',style: TextStyle(fontSize: 20),),

                decoration: BoxDecoration(
                  //shape: BoxShape.circle,
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(20),),
                  // color: Colors.red,
                  image:DecorationImage(image:AssetImage("assets/image.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(0.8,0.8)
                    )
                  ],
                ),
              ),
              Container(height: 50,width: 50,decoration:BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.only(topLeft: Radius.circular(10))),),
            ],

          ),
    );
  }
}
