import 'package:flutter/material.dart';

class Container1 extends StatelessWidget {
  final String title;
  final Image;
  final Color fontColor;
  const Container1(
      {super.key, required this.title, required this.fontColor, this.Image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width / 2.8,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image,
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 24, color: fontColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
