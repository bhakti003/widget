import 'package:flutter/material.dart';
class padding extends StatefulWidget {
  const padding({Key? key}) : super(key: key);

  @override
  State<padding> createState() => _paddingState();
}

class _paddingState extends State<padding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
        Column(
        children: [
        Container(
          width: 500,
          height: 300,
          padding: EdgeInsets.only(bottom: 50),
          decoration: BoxDecoration(
              color: Colors.black45,
           // shape: BoxShape.circle,
            borderRadius: BorderRadius.all(Radius.circular(60))

          ),

        ),
          Container(
        height: 100,
        width: 100,
        color: Colors.brown,
      ),
      ],
    )
          ],
        )


    );
  }
}
