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
            width: MediaQuery.of(context).size.width / 2.5,
            height: 175,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
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
