import 'package:flutter/material.dart';

import '../Widgets/colors_and_fonts.dart';

class PrizesPage extends StatefulWidget {
  const PrizesPage({super.key});

  @override
  State<PrizesPage> createState() => _PrizesPageState();
}

class _PrizesPageState extends State<PrizesPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: Text(
                "Prizes",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: headingFont,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Image.asset(
              'assets/images/prize.webp',
              height: screenHeight * 0.4,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'TOSC’21 brought together a huge number of participants from all over the nation in the hopes of learning something new.\n'
                'A plethora of prizes and accolades were presented to the winning participants and teams.\n'
                'Prizes upto 2 Lac, including Tablets, Speakers, Smart Watches, and many more goodies.\n'
                '• Top 10 from each pool will get online subscriptions, gift vouchers and exciting goodies.\n'
                '• Merit certificates for city wise toppers and all top 100 from each pool.\n'
                '• Participation certificates for all participants.\n'
                '• The school with maximum participants will be presented the Best School Award.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontFamily: textFont,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
