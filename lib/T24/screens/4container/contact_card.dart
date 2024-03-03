import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class contactCard extends StatelessWidget {
  final String name;
  final String department;
  final String mobile;
  final String facebook;
  final String insta;
  final String linkedIn;
  final String mail;
  final String image;

  const contactCard(
      {super.key,
      required this.name,
      required this.department,
      required this.mobile,
      required this.facebook,
      required this.insta,
      required this.linkedIn,
      required this.mail,
      required this.image});

  Future<void> goToWebPage(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

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
                right: BorderSide(color: Colors.white, width: 3),
                top: BorderSide(color: Colors.white, width: 3))),
        height: 400,
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
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(image))),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () async {
                      await goToWebPage(facebook);
                    },
                    icon: Image.asset(
                      'assets/images/facebook.png',
                      height: 25,
                      width: 25,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () async {
                      await goToWebPage(insta);
                    },
                    icon: Image.asset(
                      'assets/images/instagram.png',
                      height: 25,
                      width: 25,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () async {
                      await goToWebPage(linkedIn);
                    },
                    icon: Image.asset(
                      'assets/images/linkedin.png',
                      height: 25,
                      width: 25,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () async {
                      await goToWebPage(mail);
                    },
                    icon: Image.asset(
                      'assets/images/mail.png',
                      height: 25,
                      width: 25,
                      color: Colors.white,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
