import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/carousel/entrepre_carousel.dart';
import 'package:techkriti/T24/screens/carousel/misc_carousel.dart';
import 'package:techkriti/T24/screens/carousel/technical_carousel.dart';
import 'package:techkriti/T24/screens/competitions/competition_card.dart';
import 'package:techkriti/T24/appbars/normal_appbar.dart';

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
      appBar: const NormalAppBar(title: 'Competetions'),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, technical_carousel.routeName);
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
                  Navigator.pushNamed(context, misc_carousel.routeName);
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
