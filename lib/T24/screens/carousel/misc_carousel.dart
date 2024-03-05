import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:techkriti/T24/appbars/normal_appbar.dart';
import 'package:techkriti/T24/screens/competitions/miscellaneous/CubingEvents.dart';
import 'package:techkriti/T24/screens/competitions/miscellaneous/DesignEvents.dart';
import 'package:techkriti/T24/screens/competitions/miscellaneous/MUN.dart';
import 'package:techkriti/T24/screens/competitions/miscellaneous/Sustainability.dart';

class misc_carousel extends StatelessWidget {
  static const String routeName = '/misccarousel';

  misc_carousel({super.key});

  List Items = [DesignEvents(), MUN(), CubingEvents(), Sustainability()];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/TechnicalB.png"))),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: const NormalAppBar(title: "Miscellaneous"),
          body: CarouselSlider(
            items: Items.map((item) => ClipRRect(
                  borderRadius: BorderRadius.circular(38),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: const Color.fromARGB(255, 55, 255, 245)),
                          color: Colors.transparent),
                      height: 40,
                      width: double.infinity,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [item],
                        ),
                      ),
                    ),
                  ),
                )).toList(),
            options: CarouselOptions(
              padEnds: true,
              enableInfiniteScroll: true,
              height: double.infinity,
              viewportFraction: 0.9,
              scrollPhysics: const BouncingScrollPhysics(),
            ),
          )),
    );
  }
}
