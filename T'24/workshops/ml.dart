import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String currentText = "Initial Text"; // Initial text content

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic Text Page'),
      ),
      body: Container(
        margin: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Buttons at the top
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    updateText("Text for Button 1");
                  },
                  child: Text("Button 1"),
                ),
                ElevatedButton(
                  onPressed: () {
                    updateText("Text for Button 2");
                  },
                  child: Text("Button 2"),
                ),
                ElevatedButton(
                  onPressed: () {
                    updateText("Text for Button 3");
                  },
                  child: Text("Button 3"),
                ),
                ElevatedButton(
                  onPressed: () {
                    updateText("Text for Button 4");
                  },
                  child: Text("Button 4"),
                ),
              ],
            ),
            // Spacer
            SizedBox(height: 16.0),
            // Container for dynamic text
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.grey[300],
              child: Text(
                currentText,
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to update the text content based on the pressed button
  void updateText(String buttonText) {
    setState(() {
      switch (buttonText) {
        case "Text for Button 1":
          currentText = "This is the text for Button 1";
          break;
        case "Text for Button 2":
          currentText = "Another text for Button 2";
          break;
        case "Text for Button 3":
          currentText = "Text specific to Button 3";
          break;
        case "Text for Button 4":
          currentText = "Content related to Button 4";
          break;
        default:
          currentText = "Default Text";
      }
    });
  }
}
