import 'package:flutter/material.dart';

class miscellaneous extends StatefulWidget {
  static const String routeName = '/miscellaneous';

  const miscellaneous({super.key});

  @override
  State<miscellaneous> createState() => _miscellaneousState();
}

class _miscellaneousState extends State<miscellaneous> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MISCELLANEOUS",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
