import 'package:flutter/material.dart';

class textfiled extends StatefulWidget {
  const textfiled({Key? key}) : super(key: key);

  @override
  State<textfiled> createState() => _textfiledState();
}

class _textfiledState extends State<textfiled> {
  TextEditingController passwordController = TextEditingController();
  bool ps = true;
@override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Application'),
      ),
      body: Stack(
        children:[
        Container(
        height: 100,
        decoration: BoxDecoration(color: Colors.black,
            image: DecorationImage(
                image: AssetImage('assets/image.jpeg'), fit: BoxFit.fill)),
        child: TextField(
          controller: passwordController,
          obscureText: ps,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  // enabledBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(color: Color(0xFF6200EE)),
                  // ),
                  borderSide: BorderSide(
                      color: Colors.red, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10)),
              labelText: 'Password',
              labelStyle: TextStyle(fontSize: 20, color: Colors.red),
              hintText: 'User Password',
              hintStyle: TextStyle(fontSize: 20, color: Colors.black),
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(onPressed: () {
                setState(() {
                  ps = !ps;
                });
              },
                  icon: Icon(ps ? Icons.visibility_off : Icons
                      .remove_red_eye_outlined))
          ),

        ),
      ),

    ])
    );
  }
}
