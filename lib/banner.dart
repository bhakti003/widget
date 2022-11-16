import 'package:flutter/material.dart';
class banner extends StatefulWidget {
  const banner({Key? key}) : super(key: key);

  @override
  State<banner> createState() => _bannerState();
}

class _bannerState extends State<banner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('Banner bar'),
        actions: [
          IconButton(onPressed: ( ) {Text('Banner Box');}, icon: Icon(Icons.add)),
        ],
      ),
      body: Center(
        child: Container(
          // ignore: prefer_const_constructors
          child: Banner(message: 'Hello!!!!!!', location: BannerLocation.topEnd,
          color: Colors.red,
          textDirection: TextDirection.rtl),
         height: 200,
          width: 200,
          color: Colors.grey,
        ),
      ),
    );
  }
}
