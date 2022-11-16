import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogBoxDemo extends StatefulWidget {
  const AlertDialogBoxDemo({Key? key}) : super(key: key);

  @override
  State<AlertDialogBoxDemo> createState() => _AlertDialogBoxDemoState();
}

class _AlertDialogBoxDemoState extends State<AlertDialogBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: GestureDetector(onTap: (){
          showDialog(context: context,
            builder: (context){
            return    AlertDialog(
              title: Text('Accept ??'),
              content: Text('Do you accept'),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              backgroundColor: Colors.grey,
              elevation: 1,
              actions: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text('Cancle')),
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text('Ok')),
              ],
            );
            },

          );
        },
          child: Container(
            height: 40,
            width: 70,
            color: Colors.grey,
            child: Center(child: Text('AlertBox')),
          ),
        ),
      ),


    );
  }
}
