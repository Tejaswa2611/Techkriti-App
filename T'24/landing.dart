import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildSection("Section 1", "assets/image1.jpg"),
              buildSection("Section 2", "assets/image2.jpg"),
              buildSection("Section 3", "assets/image3.jpg"),
              buildSection("Section 4", "assets/image4.jpg"),
              buildSection("Section 5", "assets/image5.jpg"),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSection(String title, String imagePath) {
    return Container(
      height: MediaQuery.of(context).size.height * 4 / 7,
      child: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          // Inner content
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5), // Adjust opacity as needed
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Heading at the top
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // Container at the bottom with text and round button
                  Container(
                    height: MediaQuery.of(context).size.height * 2 / 7,
                    width: double.infinity,
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your inner text content goes here...",
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                        SizedBox(height: 8.0),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: ElevatedButton(
                            onPressed: () {
                              // Button action
                            },
                            child: Icon(Icons.circle),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(12.0),
                              primary: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
