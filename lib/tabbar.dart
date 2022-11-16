import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:widget/banner.dart';
class tabbar extends StatefulWidget {
  const tabbar({Key? key}) : super(key: key);

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> with SingleTickerProviderStateMixin{
  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    //pageController = PageController(initialPage: 0);
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace:SafeArea(
          child: Icon(Icons.camera_alt),
        ),
       // title: Text('Application '),
        title: Icon(Icons.ac_unit_outlined),
        toolbarHeight: 80,
        leadingWidth: 10,
        centerTitle: true,
        bottom: TabBar(
          controller: tabController,
              onTap: (value){
             tabController!.animateTo(value);
           },
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text('Chat',style: TextStyle(fontSize: 20),),
            ),
            Tab(
              child: Text('Stuts',style: TextStyle(fontSize: 20),),
            ),
        ],
         isScrollable : false,
          indicatorColor: Colors.red,
        ),

      //titleSpacing: 80.0,
        //surfaceTintColor: Colors.red,
      ),
          body: Column(
            children: [
              TabBarView(
                controller: tabController,
                children: [
                  Text('Camre'),
                  Text('Chat'),
                  Text('Stuts')
                ],
              ),

            ],
          ),
    );
  }
}
