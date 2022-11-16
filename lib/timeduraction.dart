


/*
    ________________FirstPage____________________
import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:navigator_demo/homepage.dart';
class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  void initState(){
    Timer(Duration(seconds: 5 ), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
          height: 1000,
          decoration:BoxDecoration(
            image: DecorationImage(image: NetworkImage('https://i.pinimg.com/originals/e6/fa/6b/e6fa6b92decd26328f1f3616620b3e89.gif'),fit: BoxFit.cover),
          )
      ),
    );
  }
}*/


/*
          ________________HomePage____________________


import 'package:flutter/material.dart';
import 'package:navigator_demo/model.dart';
import 'package:navigator_demo/second.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
          child: Container(
              height: 300,
              color: Colors.grey,
              // width: 40,
              // color: Colors.grey,
              child:ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount:uiList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>second(
                    //image: uiList[index].image!,
                    //subtitle: uiList[index].subtitle,
                    // model: uiList[index],
                    //  image: uiList[index].image!,
                    //  name: uiList[index].name!,
                    //  subtitle: uiList[index].subtitle!,
                    //  star: uiList[index].star!,
                    //  table: uiList[index].table,
                    model: uiList[index],
                  )));},

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 300,
                          child: Container(
                            height: 150,
                            width: 800,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image:DecorationImage(image: AssetImage(uiList[index].image!),fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Text(uiList[index].name!,),
                        Text(uiList[index].subtitle!),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.deepOrange,),
                            Text(uiList[index].star!),
                            Icon(Icons.table_bar_outlined,color: Colors.deepOrange,),
                            Text(uiList[index].table!),
                          ],
                        )
                      ],
                    ),
                  );
                }, separatorBuilder: (BuildContext context, int index) {return SizedBox(width: 10,);},)        ),
        )
    );
  }
}
 */
/*

              ________________SecondPage____________________
import 'package:flutter/material.dart';
import 'package:navigator_demo/model.dart';
class second extends StatefulWidget {
  Uimodel? model;
  // String? image;
  // String? name;
  // String? subtitle;
  // String? star;
  // String? table;
  // second({Key? key,this.image,this.name,this.subtitle,this.star,this.table}) : super(key: key);
  second({Key? key,this.model}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 300,
            child: Container(
              height: 150,
              width: 800,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image:DecorationImage(image: AssetImage(widget.model!.image!),fit: BoxFit.cover),
              ),
            ),
          ),
          Text(widget.model!.name!,),
          Text(widget.uiList!.name!,),
          Text(widget.model!.subtitle!),
          Row(
            children: [
              Icon(Icons.star,color: Colors.deepOrange,),
              Text(widget.model!.star!),
              Icon(Icons.table_bar_outlined,color: Colors.deepOrange,),
              Text(widget.model!.table!),
            ],
          )
        ],
      ),
    );
  }
}*/


