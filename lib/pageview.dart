import 'package:flutter/material.dart';
class pageview extends StatefulWidget {
  const pageview({Key? key}) : super(key: key);

  @override
  State<pageview> createState() => _pageviewState();
}

class _pageviewState extends State<pageview> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView'),
        actions: [
          IconButton(onPressed: () { }, icon:Icon(Icons.arrow_back_ios)),
          IconButton(onPressed: () { }, icon:Icon(Icons.arrow_forward_ios_outlined)),
        ],
      ),
      body: PageView(
        pageSnapping: false,
        controller: pageController,
        //scrollDirection: ,
        children: [
          Container(
           color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.yellow,
          ),
        ],
      ),

    );
  }
}
