import 'package:flutter/material.dart';

import '../mainScreen/main_screen.dart';
import '../pages/map_screen.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}



class _SignUpScreenState extends State<SignUpScreen> {


  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneNumberTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(

              children: [
                const SizedBox(height: 10,),
                Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset("images/wethinkcode.jpeg"),
    ),
                const SizedBox(height: 10,),
               const Text("Wethinkcode student Ride",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                TextField(
                  controller: userNameTextEditingController,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                    decoration: const InputDecoration(
                      labelText: "UserName",
                      hintText:  "Name",

                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color:Colors.grey),

                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color:Colors.grey),
                    ),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                ),
                TextField(
                  controller: emailTextEditingController,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                  decoration: const InputDecoration(
                    labelText: "Enter Email",
                    hintText:  "email",

                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color:Colors.grey),

                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color:Colors.grey),
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),
                TextField(
                  controller: phoneNumberTextEditingController,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                  decoration: const InputDecoration(
                    labelText: "Phone number",
                    hintText: "000-000-000",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color:Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color:Colors.grey),
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),
                TextField(
                  controller: passwordTextEditingController,
                  keyboardType: TextInputType.text,
                  obscureText: true ,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                  decoration: const InputDecoration(

                    labelText: "Enter Password",

                    hintText:  "Password",

                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color:Colors.grey),

                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color:Colors.grey),
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  mapScreen(26.2708, 28.1123)));
                  },
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreenAccent,
                ),
                child: const Text("login",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                  ),


                ),
                  )
              ],
            ),
          ),


      ),
    );
  }
}

