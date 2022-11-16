import 'package:flutter/material.dart';

class Listv extends StatefulWidget {
  const Listv({Key? key}) : super(key: key);

  @override
  State<Listv> createState() => _ListvState();
}

class _ListvState extends State<Listv> {
  List<String> movieList=['Kgf2','Kgf','Son of satyamurthy','Pushpa'];
  List imagelist=['assets/image.jpeg','assets/image1.png','assets/image2.png','assets/image3.jpeg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Listview Bulider"),
      ),
     body: ListView.builder(itemCount: movieList.length,
         shrinkWrap: true,
         itemBuilder: (context,index){
       return ListTile(
         leading: Image.asset(imagelist[index]),
         title: Text(movieList[index]),
       );
     })
    );
  }
}
//scrollDirection: Axis.vertical,
//leading: CircleAvatar(backgroundImage: AssetImage(imagelist[index]),),
//subtitle: Text("This is subtitle"),