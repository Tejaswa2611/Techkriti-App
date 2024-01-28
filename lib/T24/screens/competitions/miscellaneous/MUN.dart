import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/competitions/explorecard.dart';

class MUN extends StatelessWidget {
  const MUN({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
                child: Text(
              "Model United Nations",
              style: TextStyle(fontSize: 30),
            )),
            exploreCard(
                name: "MUN (pending)",
                image: "https://i.postimg.cc/2jH8WLK8/Copy-of-Manoeuvre.jpg"),
          ],
        ),
      ),
    );
  }
}
