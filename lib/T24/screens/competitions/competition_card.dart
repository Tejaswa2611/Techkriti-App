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
    final Height = MediaQuery.of(context).size.height;
    return Material(
      color: Colors.transparent,
      elevation: 10,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade800, // Set your custom color here
            width: 3, // Set the border width
          ),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill,
          ),
        ),
        width: 300,
        height: Height / 1.6, // Fixed width for demonstration, adjust as needed
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
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
