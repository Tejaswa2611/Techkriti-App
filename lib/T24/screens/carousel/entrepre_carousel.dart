import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:techkriti/T24/appbars/normal_appbar.dart';
import 'package:techkriti/T24/screens/competitions/Entrepreneurial/businessevents.dart';
import 'package:techkriti/T24/screens/competitions/Entrepreneurial/entrepreneurial.dart';
import 'package:techkriti/T24/screens/competitions/Entrepreneurial/fintech.dart';

class entre_carousel extends StatelessWidget {
  static const String routeName = '/entrecarousel';

  entre_carousel({super.key});

  List Items = [fintech(), businessevents(), entrepreneurial()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF121212),
        appBar: const NormalAppBar(
          title: "Entrepreneurial",
        ),
        body: CarouselSlider(
          items: Items.map((item) => ClipRRect(
                borderRadius: BorderRadius.circular(38),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          item,
                        ],
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
        ));
  }
}
