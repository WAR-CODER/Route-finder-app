import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lifts_app/authentication/signup.dart';
import 'package:lifts_app/mainScreen/main_screen.dart';
class MyDisplayScreen extends StatefulWidget {
  const MyDisplayScreen({Key? key}) : super(key: key);

  @override
  State<MyDisplayScreen> createState() => _MyDisplayScreenState();
}

class _MyDisplayScreenState extends State<MyDisplayScreen> {

  displayScreenTime(){
    Timer(const Duration(seconds: 10), ()async {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));

    });
  }
  @override
  void initState(){
    super.initState();
    displayScreenTime();
  }
  Widget build(BuildContext context) {
    return Material(
      child: Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/wethinkcode.jpeg"),
          const SizedBox(
            height: 20,
          ),
          const Text(" Wethinkcode Student Lift",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,

              ),


          ),

        ],
      ),
    ),
    );
  }
}
