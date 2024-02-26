import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: double.infinity,
        child: Text("hiii"),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      ),
    );
  }
}
