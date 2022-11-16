import 'package:flutter/material.dart';

import 'dart:async';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passController=TextEditingController();
  List userList=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() async{
    var response=await DbHelper().selectDb();
    userList=response.map((e)=>User.fromJson(e)).toList();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context,index){
                return ListTile(
                  title: Text(userList[index].userName!),
                  subtitle: Text(userList[index].email!),
                  trailing: Container(
                    width: 120,
                    child: Row(
                      children: [
                        IconButton(onPressed: (){
                          DbHelper().updateDb({
                            'UserName':'ajay',
                            'Email':'ajay@gmail.com',
                            'Password':'ajay@123'
                          }, userList[index].id!);
                          getData();
                        }, icon: Icon(Icons.update)),
                        IconButton(onPressed: (){
                          DbHelper().deleteDb(userList[index].id!);
                          getData();
                        }, icon: Icon(Icons.delete)),
                      ],
                    ),
                  ),
                );
              },itemCount: userList.length),
          TextFormField(
            controller: nameController,
          ),
          TextFormField(
            controller: emailController,
          ),
          TextFormField(
            controller: passController,
          ),
          MaterialButton(
            onPressed: () async{
              DbHelper().insertDb({
                'UserName':nameController.text,
                'Password':passController.text,
                'Email':emailController.text
              });
              getData();
            },
            child: Text("Press Here"),
          ),
        ],
      ),
    );
  }
}

class DbHelper {
  String db_name = 'student_db.db';
  String table_name = 'student_table';
  String userName = 'UserName';
  String email = 'Email';
  String password = 'Password';
  String id = 'id';
  Database? db;

  Future<Database> get database async {     // OpenDataBase
    if (db != null) return db!;

    db = await _initDB();
    return db!;
  }

  Future<Database> _initDB() async {                         // DataBase Path
    final dbPath = await getApplicationDocumentsDirectory();
    final path = join(dbPath.path, db_name);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  insertDb(Map<String, dynamic> map) async {
    Database db = await database;
    db.insert(table_name, map);
  }

  updateDb(Map<String, dynamic> map, int userId) async {
    Database db = await database;
    db.update(table_name, map, where: '$id=?', whereArgs: [userId]);
  }

  selectDb() async {
    Database db = await database;
    return db.query(table_name);
  }

  deleteDb(int userId) async {
    Database db = await database;
    db.delete(table_name, where: '$id=?', whereArgs: [userId]);
  }

  FutureOr<void> _createDB(Database db, int version) async {
    await db.execute('''
CREATE TABLE $table_name ( 
  $id INTEGER PRIMARY KEY AUTOINCREMENT, 
  $userName TEXT,
  $email TEXT,
  $password TEXT)
''');
  }
}

class User{
  int? id;
  String? userName;
  String? email;
  String? password;

  User({this.id,this.userName,this.email,this.password});

  User.fromJson(Map<String,dynamic> map){
    this.id=map['id'];
    this.userName=map['UserName'];
    this.email=map['Email'];
    this.password=map['Password'];
  }
}