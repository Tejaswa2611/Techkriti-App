import 'package:flutter/material.dart';

class technical extends StatefulWidget {
  static const String routeName = '/tech';

  const technical({super.key});

  @override
  State<technical> createState() => _technicalState();
}

class _technicalState extends State<technical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TECHNICAL",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
