import 'package:flutter/material.dart';
import 'package:techkriti/Widgets/colors_and_fonts.dart';
import '../widgets/basiccard.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundcolor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(height: MediaQuery.of(context).padding.top + 20),
                const Text(
                      "Contact Us",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'heading',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                SizedBox(height: screenHeight*0.03,),
                const CardTest(),
                SizedBox(height: screenHeight*0.05,),
                const CardTest(),
                SizedBox(height: screenHeight*0.05,),
                const CardTest(),
              ],
            ),
          ),
        ));
  }
}
