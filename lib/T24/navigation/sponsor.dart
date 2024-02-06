import 'package:flutter/material.dart';

class Sponsor extends StatefulWidget {
  const Sponsor({super.key});

  @override
  State<Sponsor> createState() => _SponsorState();
}

class _SponsorState extends State<Sponsor> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF121212),
      body: Center(
          child: Text(
        'Sponsor Page',
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
