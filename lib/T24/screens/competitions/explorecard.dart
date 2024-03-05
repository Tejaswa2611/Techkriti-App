import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class exploreCard extends StatelessWidget {
  final String name;
  final String image;
  final String url;
  const exploreCard(
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
            color: Colors.grey,
            border: Border.all(
                color: const Color.fromARGB(255, 55, 255, 245), width: 1)),
        height: 400,
        width: Width / 1.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: 250,
                width: Width / 2,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 55, 255, 245),
                        width: 1),
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
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                  onPressed: () async {
                    await goToWebPage(url);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 55, 255, 245).withOpacity(0.6)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(
                            style: BorderStyle.solid, color: Colors.black))),
                  ),
                  child: const Text(
                    "Explore",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
