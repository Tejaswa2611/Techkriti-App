import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('COMPETITIONS'),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            buildCard("COMPETITIONS 1", "assets/image1.jpg", "Learn Flutter", "Explore Flutter development."),
            buildCard("COMPETITIONS 2", "assets/image2.jpg", "Dart Language Basics", "Understand Dart programming language."),
            buildCard("COMPETITIONS 3", "assets/image3.jpg", "UI/UX Design", "Master the principles of UI/UX design."),
          ],
        ),
      ),
    );
  }

  Widget buildCard(String title, String imagePath, String hoverText, String bottomText) {
    return Container(
      width: 200.0, // Fixed width for demonstration, adjust as needed
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          // Navigate to another page on card click
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OtherPage(title),
            ),
          );
        },
        child: Card(
          elevation: 8.0,
          child: Column(
            children: [
              // Background image
              Container(
                height: 100.0, // Adjust the height as needed
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      color: Colors.black.withOpacity(0.5),
                      child: Text(
                        hoverText,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              // Small heading at the bottom
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  bottomText,
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OtherPage extends StatelessWidget {
  final String pageTitle;

  OtherPage(this.pageTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
      ),
      body: Center(
        child: Text('Content of $pageTitle'),
      ),
    );
  }
}
