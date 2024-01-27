import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/carousel/entrepre_carousel.dart';
import 'package:techkriti/T24/screens/competitions/competition_card.dart';
import 'package:techkriti/T24/screens/competitions/miscellaneous.dart';
import 'package:techkriti/T24/screens/competitions/technical.dart';

class CompetitionPage extends StatefulWidget {
  static const String routeName = '/competetions';
  const CompetitionPage({super.key});

  @override
  State<CompetitionPage> createState() => _CompetitionPageState();
}

class _CompetitionPageState extends State<CompetitionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Competitions',
          style: TextStyle(
              fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, technical.routeName);
                },
                child: const CompetitionCards(
                  title: "Technical",
                  image: "https://i.postimg.cc/J4Zr2Yht/Copy-of-Robowars.png",
                  color: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, entre_carousel.routeName);
                },
                child: const CompetitionCards(
                  title: "Entrepreneurial",
                  image: "https://i.postimg.cc/J4Zr2Yht/Copy-of-Robowars.png",
                  color: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, miscellaneous.routeName);
                },
                child: const CompetitionCards(
                  title: "Miscellaneous",
                  image: "https://i.postimg.cc/J4Zr2Yht/Copy-of-Robowars.png",
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
