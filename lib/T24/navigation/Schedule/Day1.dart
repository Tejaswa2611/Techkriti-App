import 'package:flutter/material.dart';
import 'package:techkriti/T24/navigation/Schedule/_card.dart';

class Day1 extends StatefulWidget {
  const Day1({super.key});

  @override
  State<Day1> createState() => _Day1State();
}

class _Day1State extends State<Day1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Card3(),
        ],
      ),
    );
  }
}
