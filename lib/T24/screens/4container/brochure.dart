import 'package:flutter/material.dart';

class Brochure extends StatefulWidget {
  static const String routeName = '/brochure';

  const Brochure({super.key});

  @override
  State<Brochure> createState() => _BrochureState();
}

class _BrochureState extends State<Brochure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Brochure',
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          leading: IconButton(
            onPressed: (() {
              Navigator.of(context).pop();
            }),
            icon: const Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          )),
    );
  }
}
