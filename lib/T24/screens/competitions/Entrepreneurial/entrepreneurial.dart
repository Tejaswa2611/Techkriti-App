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
    final height1 = MediaQuery.of(context).size.height;
    return Container(
      height: height1,
      width: double.infinity,
      color: Colors.amber,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SafeArea(
              child: Text(
            "Entrepreneurial",
            style: TextStyle(fontSize: 30, fontFamily: "Equinox"),
          )),
          exploreCard(
            name: "Pitch Premier",
            image: "assets/images/Pitch-Premiere.jpg",
            url: 'https://techkriti.org/competitions/details/Pitch%20premier',
          ),
        ],
      ),
    );
  }
}
