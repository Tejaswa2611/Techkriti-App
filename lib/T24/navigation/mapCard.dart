import 'package:flutter/material.dart';

class mapCard extends StatelessWidget {
  final String title;
  final String venue;

  final String time;

  const mapCard(
      {super.key,
      required this.title,
      required this.venue,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey),
          color: Color.fromARGB(255, 55, 255, 245).withOpacity(0.7)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Event:",
            style: TextStyle(fontFamily: 'Equinox'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Venue: $venue",
                style: TextStyle(fontFamily: 'Equinox'),
              ),
              Text(
                "Time: $time",
                style: TextStyle(fontFamily: 'Equinox'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
