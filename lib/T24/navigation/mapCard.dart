import 'package:flutter/material.dart';

class mapCard extends StatefulWidget {
  final String title;
  final String venue;

  final String time;

  const mapCard(
      {super.key,
      required this.title,
      required this.venue,
      required this.time});

  @override
  State<mapCard> createState() => _mapCardState();
}

class _mapCardState extends State<mapCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 19, 249, 73)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Event: Rang Barse"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Venue: L20"),
              Text("Time: 6 p.m."),
            ],
          )
        ],
      ),
    );
  }
}
