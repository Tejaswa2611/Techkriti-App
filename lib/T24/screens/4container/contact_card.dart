import 'package:flutter/material.dart';

class contactCard extends StatelessWidget {
  final String name;
  final String department;
  final String mobile;

  const contactCard(
      {super.key,
      required this.name,
      required this.department,
      required this.mobile});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: Color.fromARGB(255, 55, 255, 245), width: 7),
                left: BorderSide(
                    color: Color.fromARGB(255, 55, 255, 245), width: 7),
                right: BorderSide(color: Colors.black, width: 3),
                top: BorderSide(color: Colors.black, width: 3))),
        height: 360,
        width: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                // color: Colors.green,
                height: 210,
                width: 180,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://i.postimg.cc/mkVwt5g5/Raghav.jpg"))),
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 25,
                  color: Color.fromARGB(255, 55, 255, 245)),
            ),
            Text(
              department,
              style: const TextStyle(
                  fontFamily: 'Montserrat', fontSize: 14, color: Colors.white),
            ),
            Text(
              mobile,
              style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 18,
                  color: Color.fromARGB(255, 55, 255, 245)),
            ),
          ],
        ),
      ),
    );
  }
}
