import 'package:flutter/material.dart';

import 'map_screen.dart';



class MyMapNavigator extends StatefulWidget {
  const MyMapNavigator({super.key});

  @override
  State<MyMapNavigator> createState() => _MyMapNavigator();
}
class _MyMapNavigator extends State<MyMapNavigator>{
  TextEditingController latController = TextEditingController();
  TextEditingController lngController = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        // title: const Text(""),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Enter your location',
                style: TextStyle(fontSize: 40),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: latController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "latitude coordinates",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: lngController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'longitude coordinates',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>  mapScreen(
                              double.parse(latController.text),
                              double.parse(lngController.text))));
                    },
                    child: const Text('Check for rides')),
              ),
            ]),


      ),

    );

  }
}

