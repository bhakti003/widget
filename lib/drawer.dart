import 'package:flutter/material.dart';
class DrawerDemo extends StatefulWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      drawer: Drawer(
        child: ListView(children: [
          UserAccountsDrawerHeader(accountName: Text('Shree Patel'), accountEmail: Text('shreepatel@gmail.com'),
            currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('assets/image.jpeg')),
          ),
          CustomList(icon: Icon(Icons.account_box),text: 'Account'),
          CustomList(icon: Icon(Icons.ac_unit_outlined),text: 'Unit',)

        ]),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),),
    );
  }
}
ListTile CustomList({Icon?icon,String?text}){
  return ListTile(
    leading: icon,
    title: Text(text!),
  );
}



