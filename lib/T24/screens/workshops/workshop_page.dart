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
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/workshop.jpg"),
              fit: BoxFit.cover)),
      child: const Scaffold(
          backgroundColor: Colors.transparent,
          appBar: NormalAppBar(
            title: "Workshops",
          ),
          body: Scrollbar(
            interactive: true,
            thumbVisibility: true,
            trackVisibility: false,
            child: SingleChildScrollView(
              child: Center(
                child: Column(children: [
                  Text(
                    "WORKSHOPS",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontFamily: "Equinox"),
                  ),
                  WorkshopCard(
                    name: "MACHINE LEARNING",
                    image: "assets/images/Machine-Learning.png",
                    url: 'https://techkriti.org/workshop/MACHINE%20LEARNING',
                  ),
                  WorkshopCard(
                    name: "ARTIFICIAL INTELLIGENCE",
                    image: "assets/images/AI.jpeg",
                    url:
                        'https://techkriti.org/workshop/ARTIFICIAL%20INTELLIGENCE',
                  ),
                  WorkshopCard(
                    name: "ETHICAL HACKING",
                    image: "assets/images/Ethical-Hacking.jpeg",
                    url: 'https://techkriti.org/workshop/ETHICAL%20HACKING',
                  ),
                  WorkshopCard(
                    name: "PYTHON PROGRAMMING",
                    image: "assets/images/Python.png",
                    url: 'https://techkriti.org/workshop/PYTHON%20PROGRAMMING',
                  ),
                  WorkshopCard(
                    name: "CRYPTO CURRENCY",
                    image: "assets/images/Crypto.jpg",
                    url: 'https://techkriti.org/workshop/Crypto%20Currency',
                  ),
                  WorkshopCard(
                    name: "BIG DATA AND HADOOP",
                    image: "assets/images/Bigdatahadoop.jpg",
                    url:
                        'https://techkriti.org/workshop/Big%20Data%20and%20Hadoop',
                  ),
                  WorkshopCard(
                    name: "BLOCKCHAIN TECHNOLOGY",
                    image: "assets/images/Blockchain-Technology.jpg",
                    url:
                        'https://techkriti.org/workshop/Blockchain%20Technology',
                  ),
                  WorkshopCard(
                    name: "STARTUP WORKSHOP",
                    image: "assets/images/startup.jpg",
                    url: 'https://techkriti.org/workshop/Startup%20Workshop',
                  ),
                  WorkshopCard(
                    name: "IOT WITH GOOGLE",
                    image: "assets/images/IOT.jpeg",
                    url: 'https://techkriti.org/workshop/IoT%20with%20Google',
                  ),
                  WorkshopCard(
                    name: "PRODUCT MANAGEMENT",
                    image: "assets/images/Product-Management.webp",
                    url: 'https://techkriti.org/workshop/Product%20Management',
                  ),
                  WorkshopCard(
                    name: "DRONE",
                    image: "assets/images/Drone.jpeg",
                    url: 'https://techkriti.org/workshop/Drone',
                  ),
                  WorkshopCard(
                    name: "DIGITAL MARKETING",
                    image: "assets/images/Digital-Marketing.jpg",
                    url: 'https://techkriti.org/workshop/Digital%20Marketing',
                  ),
                  WorkshopCard(
                    name: "SKYSCRAPER DESIGN",
                    image: "assets/images/skyscraper.png",
                    url: 'https://techkriti.org/workshop/Skyscraper%20Design',
                  ),
                  WorkshopCard(
                    name: "JAVA PROGRAMMING",
                    image: "assets/images/Java.jpeg",
                    url: 'https://techkriti.org/workshop/Java%20Programming',
                  ),
                  WorkshopCard(
                    name: "CLOUD COMPUTING",
                    image: "assets/images/cloudcomputing.png",
                    url: 'https://techkriti.org/workshop/Cloud%20Computing',
                  ),
                  WorkshopCard(
                    name: "CONSULTING WORKSHOP",
                    image: "assets/images/conworkshop.png",
                    url: 'https://techkriti.org/workshop/Consulting%20Workshop',
                  ),
                  WorkshopCard(
                    name: "ROBOTICS WORKSHOP",
                    image: "assets/images/robotics-workshop.png",
                    url: 'https://techkriti.org/workshop/Robotics%20Workshop',
                  ),
                  WorkshopCard(
                    name: "APP DEVELOPMENT",
                    image: "assets/images/appdev.png",
                    url: 'https://techkriti.org/workshop/App%20Development',
                  ),
                  WorkshopCard(
                    name: "STOCK INVESTMENT",
                    image: "assets/images/stock.png",
                    url: 'https://techkriti.org/workshop/Stock%20Investment',
                  ),
                  WorkshopCard(
                    name: "ENGINE ANALYSIS",
                    image: "assets/images/engineanalysis.png",
                    url: 'https://techkriti.org/workshop/Engine%20Analysis',
                  ),
                  WorkshopCard(
                    name: "WEB DEVELOPMENT",
                    image: "assets/images/web.jpg",
                    url: 'https://techkriti.org/workshop/Web%20Development',
                  ),
                  WorkshopCard(
                    name: "BRIDGE DESIGN",
                    image: "assets/images/bridgedesignworkshop.png",
                    url: 'https://techkriti.org/workshop/Bridge%20Design',
                  ),
                  WorkshopCard(
                    name: "CHATGPT",
                    image: "assets/images/Chatgpt.png",
                    url: 'https://techkriti.org/workshop/ChatGPT',
                  ),
                  WorkshopCard(
                    name: "ELECTRIC VEHICLE",
                    image: "assets/images/ElectricCar.jpg",
                    url: 'https://techkriti.org/workshop/Electric%20Vehicle',
                  ),
                ]),
              ),
            ),
          )),
    );
  }
}
