import 'package:flutter/material.dart';
class CancelLift extends StatefulWidget {
  const CancelLift({Key? key}) : super(key: key);

  @override
  State<CancelLift> createState() => _CancelLiftState();
}

class _CancelLiftState extends State<CancelLift> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Cancel lift"),
    );
  }
}
