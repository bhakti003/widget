import 'package:path/path.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import 'package:widget/sqflite/usermodel.dart';

class HomePageController extends GetxService{
  var userData = <UserModell>[].obs;
  @override
  void onInit() {
    createData();
    super.onInit();
  }
  createData() async {
    String path = join(await getDatabasesPath(),"db_data");
    await openDatabase(path,version: 1,
    onCreate: (Database db,int version) async {
      printInfo(info: "db : " + db.toString());
     await db.execute('''
     CREATE TABLE tbl_user(
     name TEXT NOT NULL,
     phones TEXT NOT NULL,
     email TEXT NOT NULL,
     id TEXT NOT NULL
     )
     ''');
    });
    getData();
  }
  adddata({String? name,String? phones , String? email}) {
    var user = UserModell(name: name,phones: phones,email: email,id: (userData.length + 1).toString());
    insertData(user);
  }
  getData() async {
    userData.clear();
    String path  = join(await getDatabasesPath(), "db_data");
    final db = await openDatabase(path);
    final List<Map<String,dynamic>> maps = await db.query("tbl_user");
    userData.addAll(maps.map((e) => UserModell.fromJson(e)).toList());
    print(userData.value);

  }
  insertData(UserModell user) async {
    String path = join(await getDatabasesPath(),"db_data");
    final db = await openDatabase(path);
    await db.insert("tbl_user",user.toJson());
    print(user.toJson());
    getData();
  }
  deleteData({String? id}) async {
    String path  = join(await getDatabasesPath(),"db_data");
    final db = await openDatabase(path);
    await db.delete("tbl_user",where: 'id = ?',whereArgs: [id]);
    getData();
  }
  updateData(UserModell user) async {
    String path = join(await getDatabasesPath(),"db_data");
    final db = await openDatabase(path);
    getData();
    return await db.update("tbl_user",user.toJson(),
    where: 'id = ?' , whereArgs: [user.id]
    );

  }
}