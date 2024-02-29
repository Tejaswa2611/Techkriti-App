import 'package:flutter/material.dart';
import 'package:techkriti/T24/navigation/Schedule/datamodel.dart';
import 'package:url_launcher/url_launcher.dart';

class CardWidget extends StatelessWidget {
  final String title;

  final String venue;
  final String url;
  final String time;
  const CardWidget(
      {super.key,
      required this.title,
      required this.url,
      required this.time,
      required this.venue,
      required CardData cardData});

  Future<void> _launchURL(String link) async {
    final Uri url = Uri.parse(link);
    if (!await launchUrl(url)) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                "Venue: $venue",
                style: const TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "Time: $time",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: InkWell(
                      onTap: () async {
                        await _launchURL(url);
                      },
                      child: Text(
                        "Show on map",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
