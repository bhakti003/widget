
import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class bottom extends StatefulWidget {
  const bottom({Key? key}) : super(key: key);

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  var SelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NavigationBar',style: TextStyle(fontSize: 20),),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //fixedColor: Colors.yellow,
        currentIndex: SelectedIndex,
       onTap: (index){
          setState((){
            SelectedIndex = index;
          });
       },
        elevation: 4,
       type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.lightBlue,
         selectedItemColor: Colors.red,
        showSelectedLabels: true,
        unselectedItemColor: Colors.indigoAccent,
        showUnselectedLabels: true,
        iconSize: 50,
        unselectedFontSize: 20,
       mouseCursor:MouseCursor.defer,

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
              backgroundColor: Colors.black45
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
            label: 'Favorite',
              backgroundColor: Colors.green
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
              backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Person',
              backgroundColor: Colors.black45
          ),
        ],
      )
      //   bottomNavigationBar: WaterDropNavBar(barItems: [
      //     BarItem(filledIcon: Icons.ac_unit_outlined,
      //         outlinedIcon: Icons.access_alarm) ,
      //     BarItem(filledIcon: Icons.ac_unit_outlined,
      //         outlinedIcon: Icons.access_alarm) ,
      //   ],
      //    selectedIndex: SelectedIndex, onItemSelected: (index){
      //     setState((){
      //       SelectedIndex = index;
      //     });
      //   }),
      );
  }
}
