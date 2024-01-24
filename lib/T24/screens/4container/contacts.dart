import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/4container/contact_card.dart';

class Contacts extends StatefulWidget {
  static const String routeName = '/contacts';

  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              'Contacts',
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
            ),
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            leading: IconButton(
              onPressed: (() {
                Navigator.of(context).pop();
              }),
              icon: const Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            )),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: "TEAM ",
                            style: TextStyle(color: Colors.white)),
                        TextSpan(
                            text: "TECHKRITI'24",
                            style: TextStyle(
                                color: Color.fromARGB(255, 55, 255, 245))),
                      ],
                      style: TextStyle(fontSize: 35, fontFamily: 'Equinox'),
                    ),
                  )),
              const contactCard(
                name: "Raghav Modani",
                department: "Head, Events and Competition",
                mobile: "+917357617960",
                facebook:
                    "https://www.facebook.com/raghav.modani.35?mibextid=9R9pXO",
                insta:
                    "https://www.instagram.com/raghavm_910/?igsh=YTQwZjQ0NmI0OA%3D%3D",
                linkedIn:
                    "https://www.linkedin.com/in/raghav-modani-633811214/",
                mail: "mailto:raghavm@techkriti.org",
              ),
            ],
          )),
        ));
  }
}
