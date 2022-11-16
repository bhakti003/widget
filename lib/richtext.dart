import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class RichTextDemo extends StatefulWidget {
  const RichTextDemo({Key? key}) : super(key: key);

  @override
  State<RichTextDemo> createState() => _RichTextDemoState();
}

class _RichTextDemoState extends State<RichTextDemo> {
  @override
  void initState() {
    print("HEllo");
    setData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
            child: RichText(text: TextSpan(text: 'Camp with',style: TextStyle(color: Colors.black54,fontSize: 30),
                children: [TextSpan(text: '  peace \n',style: TextStyle(color: Colors.red,fontSize: 20),
                    children: [TextSpan(text: 'of mind',style: TextStyle(color: Colors.red,fontSize:20))])]),
            ),
          )
    );
  }
  // setData() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   prefs.setString("Name", "Bhakti");
  //   print(prefs.getString("Name"));
  //
  // }
     setData() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("name", "Shree");
    print(prefs.getString("name"));
     }
}
