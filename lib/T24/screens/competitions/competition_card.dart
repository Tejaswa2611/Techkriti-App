import 'package:flutter/material.dart';

class CompetitionCards extends StatelessWidget {
  const CompetitionCards(
      {super.key,
      required this.title,
      required this.image,
      required this.color});
  final String title;
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.fill,
          ),
        ),
        width: double.infinity,
        height: 250, // Fixed width for demonstration, adjust as needed
        margin: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                    color: color, fontSize: 20, fontFamily: 'Montserrat'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
