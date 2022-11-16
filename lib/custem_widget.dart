import 'package:flutter/material.dart';
class CustomWidget extends StatefulWidget {
  const CustomWidget({Key? key}) : super(key: key);

  @override
  State<CustomWidget> createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      drawer: Drawer(
        child: ListView(children: [
          UserAccountsDrawerHeader(accountName: Text('Shree Patel'), accountEmail: Text('shreepatel@gmail.com'),
            currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('assets/image.jpeg')),
          ),
          CustomList(icon: Icon(Icons.account_box),text: 'Account'),
          CustomList(icon: Icon(Icons.ac_unit_outlined),text: 'Unit',)

        ]),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),),
      body: Column(
        children: [
          Text('Hello',style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold)),
          CustomText(text: 'Hii',color: Colors.black54),
          CustomText(text: 'Shree',size: 25),
          SizedBox(height: 20,),
          CustomContainer(height: 60,width: 60,colors:Colors.black54,circular: 20,image: "assets/image.jpeg"),
          CustomContainer(height: 60,width: 60,image: 'assets/image.jpeg',circular: 20, colors: Colors.black54),
        ],
      ),
    );
  }
}
ListTile CustomList({Icon?icon,String?text}){
  return ListTile(
    leading: icon,
    title: Text(text!),
  );
}
// CustomList(icon: Icon(Icons.account_box,),text: 'My profile'),
// CustomList(icon: Icon(Icons.location_on), text: 'Brower place'),
// CustomList(icon: Icon(Icons.crisis_alert), text: 'Create new plan'),


Text CustomText({String? text,double?size,Color?color,FontWeight ?weight}){
  return Text(text!,
    style: TextStyle(fontSize: size??15,
      color: color??Colors.red,
      fontWeight: weight ?? FontWeight.bold,
    ),
  );
}

// CustomText(text: 'Hii',color: Colors.black54),
// CustomText(text: 'Shree',size: 25),


Container CustomContainer({required double height,required double width,required Color colors,required double circular,required String image}){
  return Container(
    height: height ,
    width: width,
    decoration: BoxDecoration(
      color:  Colors.red,
      borderRadius: BorderRadius.circular(circular),
      image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill),
      border: Border.all(style: BorderStyle.solid,width: 2),
    ),
  );
}
//CustomContainer(height: 60,width: 60,colors:Colors.black54,circular: 20,image: "assets/image.jpeg"),
//CustomContainer(height: 60,width: 60,image: 'assets/image.jpeg',circular: 20, colors: Colors.black54),

Positioned CustomPositioned({double? top,double? left,double? height,double?width,String?image,double?circular}){
  return Positioned(
      top:top,  left: left,
      child: Container(
        height:height,width:width,decoration: BoxDecoration(borderRadius: BorderRadius.circular(circular!),
          image:DecorationImage(image: AssetImage(image!),fit: BoxFit.fill) ),));
}
// CustomContainer(top: 15.h,left: 54.w,height: 32.h,width: 40.w,image: 'assets/ff3.jpeg',circular: 90.w),
// CustomContainer(top: 25.h,left: 7.w,height: 32.h,width: 40.w,image: 'assets/f2.jpeg',circular: 90.w),

TextField CustemTextField({dynamic? controller,String?htext,double?circular}){
  return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: htext,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      )
  );
}

// CustemTextField(htext: 'Enter Name',controller: NameController,),
// CustemTextField(htext: 'Enter Email',controller: EmailController,),
// CustemTextField(htext: 'Enetr Address',controller: AddController,),


//   Positioned CustomContainer({required double topPosition, required double leftPosition, required double height, required double width,}) {
//     return Positioned(top: topPosition,left: leftPosition,
//           child: Container(
//             height: height,
//             width: width,
//             decoration: BoxDecoration(
//                 image: DecorationImage(image: AssetImage('assets/f3.jpeg'),fit: BoxFit.cover),
//                 borderRadius: BorderRadius.circular(90.w),
//                // color: Colors.red
//             ),
//           ),
//         );
//   }
// }
// Positioned CustomContainer({double? top,double? left,double? height,double?width,String?image,double?circular}){
// return Positioned(
// top:top,  left: left,
// child: Container(
// height:height,width:width,decoration: BoxDecoration(borderRadius: BorderRadius.circular(circular!),
// image:DecorationImage(image: AssetImage(image!),fit: BoxFit.fill) ),));
// ...................TextFormField CustomTextField(
//     {TextEditingController? controller,
//       bool obscureText = false,
//       Widget? suffix,
//       String? hintText,
//       Widget? prefix,
//       String? Function(String?)? validator}) {
//   return TextFormField(
//     controller: controller,
//     style: TextStyle(color: Colors.white, fontSize: 2.h),
//     cursorColor: Colors.white,
//     obscureText: obscureText,
//     decoration: InputDecoration(
//       errorStyle: TextStyle(color: Colors.white, fontSize: 2.h),
//       errorBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.white),
//           borderRadius: BorderRadius.all(Radius.circular(1.5.h))),
//       enabledBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: Colors.transparent),
//         borderRadius: BorderRadius.all(Radius.circular(1.5.h)),
//       ),
//       focusedBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.white),
//           borderRadius: BorderRadius.all(Radius.circular(1.5.h))),
//       filled: true,
//       fillColor: Colors.white38,
//       hintText: hintText,
//       hintStyle: TextStyle(color: Colors.white, fontSize: 2.h),
//       suffixIcon: suffix,
//       prefixIcon: prefix,
//       border: OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(1.5.h))),
//     ),
//     validator: validator,
//   )