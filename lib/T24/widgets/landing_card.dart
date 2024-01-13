import 'package:flutter/material.dart';

class LandingCard extends StatelessWidget {
  final String text;
  final Color color;

  const LandingCard({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: color,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
