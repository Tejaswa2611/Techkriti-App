import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/competitions/explorecard.dart';

class entrepreneurial extends StatefulWidget {
  const entrepreneurial({super.key});

  @override
  State<entrepreneurial> createState() => _entrepreneurialState();
}

class _entrepreneurialState extends State<entrepreneurial> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SafeArea(
              child: Text(
            "Entrepreneurial",
            style: TextStyle(fontSize: 30),
          )),
          exploreCard(
              name: "Pitch Premier", image: "assets/images/Pitch-Premiere.jpg"),
        ],
      ),
    );
  }
}
