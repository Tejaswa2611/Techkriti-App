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
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/TechnicalB.png",
              ))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const NormalAppBar(title: 'Competitions'),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, technical_carousel.routeName);
                },
                child: const CompetitionCards(
                  title: "Technical",
                  image: "assets/images/technical.png",
                  color: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, entre_carousel.routeName);
                },
                child: const CompetitionCards(
                  title: "Entrepreneurial",
                  image: "assets/images/entrepreneurial.png",
                  color: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, misc_carousel.routeName);
                },
                child: const CompetitionCards(
                  title: "Miscellaneous",
                  image: "assets/images/miscellaneous.png",
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
