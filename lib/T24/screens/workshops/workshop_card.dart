import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkshopCard extends StatelessWidget {
  final String name;
  final String image;
  final String url;
  const WorkshopCard(
      {super.key, required this.name, required this.image, required this.url});

  Future<void> goToWebPage(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final Width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
            border: Border.all(
                color: const Color.fromARGB(255, 55, 255, 245), width: 1)),
        height: 400,
        width: Width / 1.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: 250,
                width: Width / 1.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(image))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                name,
                style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 17,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                  onPressed: () async {
                    await goToWebPage(url);
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 55),
                    backgroundColor: Colors.blueGrey.withOpacity(0.6),
                    shape: (RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(
                            style: BorderStyle.solid,
                            color: Color.fromARGB(255, 55, 255, 245),
                            width: 3))),
                  ),
                  child: const Text(
                    "Explore",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
