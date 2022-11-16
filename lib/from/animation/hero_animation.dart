import 'package:flutter/material.dart';

class Hero_Animation extends StatefulWidget {
  const Hero_Animation({Key? key}) : super(key: key);

  @override
  State<Hero_Animation> createState() => _Hero_AnimationState();
}

class _Hero_AnimationState extends State<Hero_Animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(title: Text('Hero Animation')),
      body: Hero(tag: 'Photo',
        child: GestureDetector(onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Herodemo(),));
        },child:Image.asset('assets/image.jpeg')),),
    );
  }
}

class Herodemo extends StatefulWidget {
  const Herodemo({Key? key}) : super(key: key);

  @override
  State<Herodemo> createState() => _HerodemoState();
}

class _HerodemoState extends State<Herodemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
      ),
      body: Hero(tag: 'Photo', child: Image.asset('assets/image4.jpeg')),
    );
  }
}
