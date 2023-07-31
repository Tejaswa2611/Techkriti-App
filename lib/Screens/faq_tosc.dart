import 'package:flutter/material.dart';
import 'package:techkriti/Widgets/colors_and_fonts.dart';

import '../Widgets/FaqItem.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "FAQ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'heading',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              FAQItem(
                question: 'Can I use a mobile phone to appear for the test?',
                answer:
                    'It is preferable to have a PC to attempt the test. However, you can also use a smartphone for the test.',
              ),
              SizedBox(height: 16.0),
              FAQItem(
                question: 'What is the syllabus of TOSC?',
                answer:
                    'TOSC is an exam filled with fascinating and intriguing questions that test your logical reasoning and thinking skills. If you think your analytical abilities are sharp and clear, then just sit for the exam with a pen and a fresh mind! You can also attempt previous TOSC papers here.',
              ),
              SizedBox(height: 16.0),
              FAQItem(
                question: 'What are the prerequisites to appear in TOSC?',
                answer:
                    'No previous knowledge is required to participate. The only prerequisite is enthusiasm and confidence.',
              ),
              SizedBox(height: 16.0),
              FAQItem(
                question:
                    'Even though my school is not tied up with TOSC, can I participate?',
                answer:
                    'Yes, every student pursuing school (class 6th-12th) can enroll for TOSC.',
              ),
              SizedBox(height: 16.0),
              FAQItem(
                question: 'How can I register for the exam?',
                answer:
                    'Please check out this link for a complete process on registration.',
              ),
              SizedBox(height: 16.0),
              FAQItem(
                question: 'When will we receive our admit card for the exam?',
                answer:
                    'If you have paid the registration fee, then you will receive your admit card a few days before the exam.',
              ),
              SizedBox(height: 16.0),
              FAQItem(
                question:
                    'Will my progress be saved in the online exam if by chance I get disconnected from the portal due to network issues?',
                answer:
                    'Your progress will be saved automatically from time to time, and you will be able to resume from where you left off.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
