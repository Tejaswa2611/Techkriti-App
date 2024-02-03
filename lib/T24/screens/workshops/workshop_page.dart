import 'package:flutter/material.dart';
import 'package:techkriti/T24/appbars/normal_appbar.dart';
import 'package:techkriti/T24/screens/workshops/workshop_card.dart';

class WorkshopPage extends StatefulWidget {
  static const String routeName = '/workshops';

  const WorkshopPage({super.key});

  @override
  State<WorkshopPage> createState() => _WorkshopPageState();
}

class _WorkshopPageState extends State<WorkshopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const NormalAppBar(title: "Workshops",),
        body: const Scrollbar(
          interactive: true,
          thumbVisibility: true,
          trackVisibility: false,
          child: SingleChildScrollView(
            child: Center(
              child: Column(children: [
                Text(
                  "WORKSHOPS",
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
                WorkshopCard(
                    name: "MACHINE LEARNING",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "ARTIFICIAL INTELLIGENCE",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "MACHINE LEARNING",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "ETHICAL HACKING",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "PYTHON PROGRAMMING",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "CRYPTO CURRENCY",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "BIG DATA AND HADOOP",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "BLOCKCHAIN TECHNOLOGY",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "STARTUP WORKSHOP",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "IOT WITH GOOGLE",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "PRODUCT MANAGEMENT",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "DRONE",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "DIGITAL MARKETING",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "SKYSCRAPER DESIGN",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "JAVA PROGRAMMING",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "CLOUD COMPUTING",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "CONSULTING WORKSHOP",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "ROBOTICS WORKSHOP",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "APP DEVELOPMENT",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "STOCK INVESTMENT",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "ENGINE ANALYSIS",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "WEB DEVELOPMENT",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "BRIDGE DESIGN",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "CHATGPT",
                    image: "assets/images/Bridge Design Challenge.jpg"),
                WorkshopCard(
                    name: "ELECTRIC VEHICLE",
                    image: "assets/images/Bridge Design Challenge.jpg"),
              ]),
            ),
          ),
        ));
  }
}
