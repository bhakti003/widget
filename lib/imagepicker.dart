import 'package:flutter/material.dart';

class Imagee extends StatefulWidget {
  const Imagee({Key? key}) : super(key: key);

  @override
  State<Imagee> createState() => _ImageeState();
}

class _ImageeState extends State<Imagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),centerTitle: true,
      ),
    );
  }
}
