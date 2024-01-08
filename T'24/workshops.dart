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
          title: Row(
            children: [
              Image.asset(
                'assets/app_logo.png', // Replace with your app logo image path
                height: 40.0, // Adjust the height as needed
              ),
              SizedBox(width: 8.0),
              Text('Card Page'),
            ],
          ),
        ),
        body: Column(
          children: [
            buildCard("Card 1", "assets/image1.jpg", "Description 1", "Hover Text 1"),
            buildCard("Card 2", "assets/image2.jpg", "Description 2", "Hover Text 2"),
            buildCard("Card 3", "assets/image3.jpg", "Description 3", "Hover Text 3"),
            // Add more cards
          ],
        ),
      ),
    );
  }

  Widget buildCard(String title, String imagePath, String description, String hoverText) {
    return InkWell(
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
              height: 200.0, // Adjust the height as needed
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
            // Description at the bottom
            Container(
              padding: EdgeInsets.all(8.0),
              child: Text(
                description,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
          ],
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
