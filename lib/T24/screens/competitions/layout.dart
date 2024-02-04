import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  final Color color;
  final String title;
  // ignore: prefer_typing_uninitialized_variables, non_constant_identifier_names
  final Image;
  // final String quote;
  final Color fontColor;
  const Card1(
      {super.key,
      required this.color,
      required this.title,
      // ignore: non_constant_identifier_names
      this.Image,
      // required this.quote,
      required this.fontColor});

  @override
  Widget build(BuildContext context) {
    const TextStyle headingstyle = TextStyle(
        fontFamily: 'heading',
        fontSize: 23,
        fontWeight: FontWeight.normal,
        color: Colors.white);
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Image,
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8),
                child: Text(title,
                    style:
                        headingstyle //TextStyle(fontSize: 20, color: fontColor),
                    ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(
              //       top: 120.0, right: 200, left: 10, bottom: 10),
              //   child: Opacity(
              //     opacity: 0.7,
              //     child: Container(
              //       color: color,
              //       height: 120,
              //       width: 350,
              // child: Padding(
              //   padding: const EdgeInsets.only(top: 10.0),
              // child: Text(
              //   quote,
              //   style:
              //       const TextStyle(color: Colors.white, fontSize: 15),
              //   textAlign: TextAlign.center,
              // ),
              // ),
              // ),
              // ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
