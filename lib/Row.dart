import 'package:flutter/material.dart';
class Rows extends StatefulWidget {
  const Rows({Key? key}) : super(key: key);

  @override
  State<Rows> createState() => _RowsState();
}

class _RowsState extends State<Rows> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.menu),
        title: Text('Application',style: TextStyle(fontSize: 30,color: Colors.black),
      ),
      ),
      body:
          Column(
            children: [
              Container(
                height: 100,
                width: 200,
                child: Text('Container 1',style: TextStyle(fontSize: 20),),
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(80),
                  border: Border.all(width: 10,color: Colors.grey),
                ),
               // color: Colors.black,
              ),
      // children: [
      //   Expanded(
      //     child: Text('Deliver features faster', textAlign: TextAlign.center),
      //   ),
      //   Expanded(
      //       child: Text('Application Flutter ',textAlign: TextAlign.center,)),

              // Row(
              //   children: <Widget>[
              //     const FlutterLogo(),
              //     const Expanded(
              //       child: Text("Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android."),
              //     ),
              //     const Icon(Icons.sentiment_very_satisfied),
              //   ],
              // )
              Padding(
                padding: const EdgeInsets.only(top: 90,left: 110,bottom: 200),
                child: Container(
                  height: 200,
                  width: 200,
                  alignment: Alignment.center,
                  child: Text('Container 2',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),

                  ),
                  margin: EdgeInsets.only(right:2),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(width: 5,color: Colors.brown),
                      //image: ExactAssetImage('assets/image.jpeg'),
                      image: DecorationImage(
                        image: AssetImage('assets/image.jpeg'),
                        fit: BoxFit.cover,
                      )
                  ),
                ),
              ),
            ],
          ),
    );
  }
}
