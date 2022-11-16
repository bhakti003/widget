import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:widget/Models/get_user_model.dart';
class Listview extends StatefulWidget {
  const Listview({Key? key}) : super(key: key);

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  @override
  void initState() {
    getApiCall();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: Text('ListView '),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ListTile(
            leading: Icon(Icons.menu),
            trailing: Icon(Icons.lan),
            title: Text('Item1',style: TextStyle(fontSize: 20,color: Colors.red)),
          ),
          ListTile(
            leading: Icon(Icons.access_alarm),
            trailing: Icon(Icons.cloud_circle),
            title: Text('Item1',style: TextStyle(fontSize: 20,color: Colors.red)),
          ),
          ListTile(
            leading: Icon(Icons.satellite),
            trailing: Icon(Icons.scatter_plot),
            title: Text('Item1',style: TextStyle(fontSize: 20,color: Colors.red)),
          ),
          ListTile(
            leading: Icon(Icons.save),
            trailing: Icon(Icons.gps_fixed),
            title: Text('Item1',style: TextStyle(fontSize: 20,color: Colors.red)),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            trailing: Icon(Icons.lan),
            title: Text('Item1',style: TextStyle(fontSize: 20,color: Colors.red)),
          ),
          ListTile(
            leading: Icon(Icons.print),
            trailing: Icon(Icons.pages),
            title: Text('Item1',style: TextStyle(fontSize: 20,color: Colors.red)),
          ),
          ListTile(
            leading: Icon(Icons.gamepad),
            trailing: Icon(Icons.games),
            title: Text('Item1',style: TextStyle(fontSize: 20,color: Colors.red)),
          ),
        ],
      )
    );
  }
  getApiCall()  async {
    print("CALLING::::");
    var response= await http.get(Uri.parse("https://reqres.in/api/users?page=2"));
    if(response.statusCode==200){
      print("RESPONSE ${response.body}");
      var userData=GetUserModel.fromJson(jsonDecode(response.body));
      print(userData.userList![8].firstName);

    }

  }
}

