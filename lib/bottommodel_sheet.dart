import 'package:flutter/material.dart';
class bottommodel extends StatefulWidget {
  const bottommodel({Key? key}) : super(key: key);

  @override
  State<bottommodel> createState() => _bottommodelState();
}

class _bottommodelState extends State<bottommodel> {
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BottomModel Sheet')),
      body: Center(
          child: GestureDetector(onTap: (){
            showModalBottomSheet(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),context: context, builder: (context) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Icon(Icons.photo),
                    title: Text('Photo'),
                  ),
                  ListTile(
                    leading: Icon(Icons.video_camera_back_outlined),
                    title: Text('Video'),
                  ),
                  ListTile(
                    leading: Icon(Icons.camera_alt),
                    title: Text('Camera'),
                  ),
                  ListTile(
                    leading: Icon(Icons.share_rounded),
                    title: Text('share'),
                  ),
                  ListTile(
                    leading: Icon(Icons.local_airport),
                    title: Text('Airport'),
                  ),
                ],
              );
            },);
          },
            child: Container(
              height: 40,
              width: 90,
              color: Colors.grey,
              child: Center(child: Text('Click Me')),
    ),
          ),
        ),
    );
  }
}
