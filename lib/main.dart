import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lifts_app/display_screen/screen.dart';
import 'package:provider/provider.dart';
import 'package:lifts_app/pages/map_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(
    MyApp(
      child: MaterialApp(
        title: 'Vuyani app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyDisplayScreen(),

        //removing the bunner
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key);
  final Widget? child;

 MyApp({this.child});

 static void restartApp(BuildContext context){
   context.findAncestorStateOfType<_MyAppState>()!.restartApp();
 }
 @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Key key = UniqueKey();

  void restartApp(){
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
        key: key,
        child: widget.child!,
    );
  }
}

