import 'package:flutter/material.dart';

class CompetitionPage extends StatefulWidget {
  static const String routeName = '/competetions';
  const CompetitionPage({super.key});

  @override
  State<CompetitionPage> createState() => _CompetitionPageState();
}

class _CompetitionPageState extends State<CompetitionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Competitions',
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
          ),
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          leading: IconButton(
            onPressed: (() {
              Navigator.of(context).pop();
            }),
            icon: const Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          )),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          buildCard(
              "Learn Flutter",
              "https://tse3.mm.bing.net/th?id=OIP.1-eJw7i8sreIDdO0sdPt1gHaEK&pid=Api&P=0&h=180",
              "Learn Flutter",
              "Explore Flutter development."),
          buildCard(
              "Dart Language Basics",
              "https://tse4.mm.bing.net/th?id=OIP.kRmFKej4bUeDswVkCzxOfgHaD4&pid=Api&P=0&h=180",
              "Dart Language Basics",
              "Understand Dart programming language."),
          buildCard(
              "UI/UX Design",
              "https://tse4.mm.bing.net/th?id=OIP.fnMNG_MyKAiKyIhcqhKK2gHaEQ&pid=Api&P=0&h=180",
              "UI/UX Design",
              "Master the principles of UI/UX design."),
        ],
      ),
    );
  }

  Widget buildCard(
      String title, String imagePath, String hoverText, String bottomText) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(imagePath),
          fit: BoxFit.fill,
        ),
      ),
      width: 200.0,
      height: 250, // Fixed width for demonstration, adjust as needed
      margin: const EdgeInsets.all(12.0),
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
        // child: Card(
        //   elevation: 8.0,
        //   child: Column(
        //     children: [
        //       // Background image
        //       Container(
        //         height: 100.0, // Adjust the height as needed

        //         child: Center(
        //           child: MouseRegion(
        //             cursor: SystemMouseCursors.click,
        //             child: Container(
        //               padding: const EdgeInsets.all(8.0),
        //               color: Colors.black.withOpacity(0.5),
        //               child: Text(
        //                 hoverText,
        //                 style: const TextStyle(color: Colors.white),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //       // Small heading at the bottom
        //       Container(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text(
        //           bottomText,
        //           style: const TextStyle(fontSize: 12.0),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}

class OtherPage extends StatelessWidget {
  final String pageTitle;

  const OtherPage(this.pageTitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          pageTitle,
          style: const TextStyle(fontSize: 20),
        ),
      ),
      body: Center(
        child: Text('Content of $pageTitle'),
      ),
    );
  }
}
