import 'package:flutter/material.dart';

class RequestALift extends StatefulWidget {
  const RequestALift({Key? key}) : super(key: key);

  @override
  State<RequestALift> createState() => _RequestALiftState();
}

class _RequestALiftState extends State<RequestALift> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Request A lift"),
    );
  }
}
