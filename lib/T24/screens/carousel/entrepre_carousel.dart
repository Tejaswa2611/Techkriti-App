import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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
        appBar: AppBar(
          title: const Text(
            "ENTREPRENEURIAL",
            style: TextStyle(fontSize: 20),
          ),
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
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: item,
                          )
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