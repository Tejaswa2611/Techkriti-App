import 'package:flutter/material.dart';
import 'package:techkriti/Widgets/colors_and_fonts.dart';

import '../Widgets/hex_to_color.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(height: MediaQuery.of(context).padding.top + 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/images/Techkriti_logo_transparent.webp',
                height: 170,
              ),
            ),
            // const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTech("What is Techkriti?"),
                  const SizedBox(height: 10),
                  buildDescription(
                      "Techkriti is an annual international technical and entrepreneurial festival organized by the students of IIT Kanpur. The festival is held over four days every March, attracting participants from every corner of the country as well as from abroad, comprising a total footfall of over 60,000 from all over India and abroad."),
                  const SizedBox(height: 20),
                  Image.asset(
                    'assets/images/TOSC logo.png',
                    height: 150,
                  ),
                  const SizedBox(height: 20),
                  buildHeading("What is TOSC?"),
                  const SizedBox(height: 10),
                  buildDescription(
                      "TOSC (Technical and Online Support Cell) is a dedicated team of tech enthusiasts at IIT Kanpur who provide technical assistance and online support for various events, workshops, and initiatives conducted by Techkriti."),
                  const SizedBox(height: 40),
                  buildHeading("Why TOSC?"),
                  const SizedBox(height: 10),
                  buildDescription(
                      "TOSC plays a crucial role in ensuring smooth functioning of Techkriti by providing technical expertise, managing online platforms, and assisting participants and organizers throughout the festival."),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeading(String text) {
    var redStyle = TextStyle(
      color: hexToColor("#BFACE0"),
      fontFamily: headingFont,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );

    const defaultStyle = TextStyle(
      color: Colors.white,
      fontFamily: headingFont,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );

    const separator = 'TOSC';
    final separatorIndex = text.indexOf(separator);

    if (separatorIndex != -1) {
      return Row(
        children: [
          Text(
            text.substring(0, separatorIndex),
            style: defaultStyle,
          ),
          Text(
            separator,
            style: redStyle,
          ),
          Text(
            text.substring(separatorIndex + separator.length),
            style: defaultStyle,
          ),
        ],
      );
    } else {
      return Text(
        text,
        style: defaultStyle,
      );
    }
  }
  Widget buildTech(String text) {
    var redStyle = TextStyle(
      color: hexToColor("#BFACE0"),
      fontFamily: headingFont,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );

    const defaultStyle = TextStyle(
      color: Colors.white,
      fontFamily: headingFont,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );

    const separator = 'Techkriti?';
    final separatorIndex = text.indexOf(separator);

    if (separatorIndex != -1) {
      return Row(
        children: [
          Text(
            text.substring(0, separatorIndex),
            style: defaultStyle,
          ),
          Text(
            separator,
            style: redStyle,
          ),
          Text(
            text.substring(separatorIndex + separator.length),
            style: defaultStyle,
          ),
        ],
      );
    } else {
      return Text(
        text,
        style: defaultStyle,
      );
    }
  }


  Widget buildDescription(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontFamily: textFont,
      ),
    );
  }
}
