import 'package:flutter/material.dart';

import '../constants/colors_and_fonts.dart';

class PastPapersPage extends StatelessWidget {
  static const String routeName = '/past-papers';
  const PastPapersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Past papers here soon",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: headingFont,
          ),
        ),
      ),
    );
  }
}
