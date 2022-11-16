import 'dart:ffi';

import 'package:flutter/material.dart';
class MyImage extends StatefulWidget {
  const MyImage({Key? key}) : super(key: key);

  @override
  State<MyImage> createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  bool ps = true;
  var emailPattern=RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 1000,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/login3.jpeg'),fit: BoxFit.cover)),
          child: Column(
             // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 300),
                  child:  Text('Login',style: TextStyle(fontSize: 40),)),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Form(
                      key:_formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller:usernameController ,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                              ),

                              hintText: 'Enter UserName',hintStyle: TextStyle(fontSize: 20,color: Colors.black,),
                              labelText: 'User Name',labelStyle: TextStyle(fontSize: 22,color: Colors.black),
                              prefixIcon: Icon(Icons.person,size: 30,color: Colors.black45),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return "Please enter username";
                              }else if(value.length<=10){
                                return "Please enter atleast 10 character";
                              }

                            },
                          ),
                          SizedBox(height: 20,),
                          TextField(
                            obscureText: ps,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              hintText: 'Password',hintStyle: TextStyle(fontSize: 20,color: Colors.black,),
                              labelText: 'Password',labelStyle: TextStyle(fontSize: 22,color: Colors.black),
                              prefixIcon: Icon(Icons.lock,size: 30,color: Colors.black45),
                              suffixIcon: IconButton(onPressed: (){
                               setState((){
                                 ps = !ps;
                               });
                              }, icon: Icon(ps ? Icons.visibility_off : Icons.remove_red_eye_outlined))
                            ),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            // validator:(value) {
                            //    if(value!.isEmpty && value!.isEmpty && value!.contains('@') && value!.contains('.'));
                            // },
                            controller: emailController ,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email,size: 30,color: Colors.black45,),
                              hintText: 'Email Id',hintStyle: TextStyle(fontSize: 20,color: Colors.black),
                              labelText: 'Email',labelStyle: TextStyle(fontSize: 22,color: Colors.black),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)
                              ),
                            ),
                            validator: (value){
                              if(!emailPattern.hasMatch(value!)){
                                return "Please enter valid email";
                              }
                            },
                            ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: (){
                              if(_formKey.currentState!.validate()){
                                print("LOGIN");
                              }
                            },
                            child: Container(
                              height: 50,
                              width: 100,
                              color:Colors.red,
                              child: Center(child: Text("Login",style: TextStyle(
                                color: Colors.white,
                              ),
                                // maxLines: 2,
                                // overflow: TextOverflow.ellipsis,
                              )),
                            ),
                          )
                        ],
                      ),
                    ),

                  ),
              ],
            ),
          )

        ),

    );
  }
}
