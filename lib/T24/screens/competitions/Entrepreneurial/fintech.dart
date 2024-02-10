import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/competitions/explorecard.dart';

class fintech extends StatefulWidget {
  const fintech({super.key});

  @override
  State<fintech> createState() => _fintechState();
}

class _fintechState extends State<fintech> {
  @override
  Widget build(BuildContext context) {
    final height1 = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: height1,
      color: Colors.amber,
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SafeArea(
                child: Text(
              "Fintech",
              style: TextStyle(fontSize: 30, fontFamily: "Equinox"),
            )),
            exploreCard(
              name: "Beat the Market",
              image: "assets/images/BeatTheMarket.png",
              url:
                  'https://techkriti.org/competitions/details/Beat%20the%20Market',
            ),
          ],
        ),
      ),
    );
  }
}
