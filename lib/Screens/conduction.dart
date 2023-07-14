import 'package:flutter/material.dart';
import 'package:techkriti/Widgets/colors_and_fonts.dart';

class Conduction extends StatefulWidget {
  const Conduction({Key? key}) : super(key: key);

  @override
  _ConductionState createState() => _ConductionState();
}

class _ConductionState extends State<Conduction> {
  final ScrollController _scrollController = ScrollController();
  final List<String> phases = [
    'Phase 1',
    'Phase 1 Results',
    'Phase 2',
    'Registration Process',
    'Selection Process'
  ];
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 35, 47, 1.0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top + 20),
          SizedBox(
            height: 20,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: phases.length,
              itemBuilder: (context, index) => TextButton(
                onPressed: () {
                  setState(() {
                    _selectedTabIndex = index;
                  });
                  scrollToPhase(index);
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.symmetric(horizontal: 15),
                  ),
                  overlayColor: MaterialStateProperty.all<Color?>(
                    Colors.transparent,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: _selectedTabIndex == index
                            ? Colors.deepPurple[400]!
                            : Colors.transparent,
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: Text(
                    phases[index],
                    style: TextStyle(
                      color: _selectedTabIndex == index
                          ? Colors.deepPurple[
                              400] // Change the color for selected tab
                          : Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: headingFont,
                    ),
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    // softWrap: true,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              controller: _scrollController,
              padding: EdgeInsets.zero,
              children: [
                // const SizedBox(height: 20),
                buildPhaseContent(
                  'PHASE 1',
                  'Phase 1 will be conducted on 18th December. This round consists of an online exam which will consist of objective type questions on aptitude, reasoning and general awareness. Participants will participate individually in this phase. The duration of the exam will be of 60 mins. Top 100 students from each pool B and C will be invited to get an opportunity for Phase II.',
                  'assets/images/paper.png',
                ),
                // const SizedBox(height: 20),
                buildPhaseContent(
                  'PHASE 1 RESULTS',
                  'Phase 1 results will be announced in December. The results will be made available on the website. The e-Certificates of participation will be available on the TOSC website after the result declaration.',
                  'assets/images/result.png',
                ),
                // const SizedBox(height: 20),
                buildPhaseContent(
                  'PHASE 2',
                  'This phase will be conducted offline at IIT Kanpur. It will comprise variety of puzzles and competitive activities which will not only decide the winner but also help the participants explore and enhance their cognitive and analytical skills. Also, there will be exhibitions, technical workshops and talks (by some renowned personalities) as a part of Phase 2.',
                  'assets/images/laptop.png',
                ),
                // const SizedBox(height: 20),
                buildPhaseContent(
                  'REGISTRATION PROCESS',
                  '1- Students are required to participate individually.\n'
                      '2- Clicking the Register here button on the right would lead you to a form filling which would enable you to create an account.\n'
                      '3- Signing in to that account and paying the registration fees would complete the process.\n'
                      '4- Click here for the detailed instructions\n',
                  'assets/images/registration.jpeg',
                ),
                // const SizedBox(height: 20),
                buildPhaseContent(
                  'SELECTION PROCESS',
                  'Each round consists of three pools:\n'
                      'Pool A: Class 6th - 8th\n'
                      'Pool B: Class 9th - 10th\n'
                      'Pool C: Class 11th -12th\n'
                      '1- Top 100 participants from each Pool B and C, selected on the basis of their performance in phase 1 will be given the opportunity to compete for phase 2.\n'
                      '2- Champions for Pool A will be declared on the basis of phase 1 only.\n',
                  'assets/images/selection.png',
                ),
                // const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPhaseContent(
      String phaseTitle, String content, String imagePath) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        alignment: Alignment.center,
        height: screenHeight - 115,
        color: const Color.fromRGBO(35, 35, 47, 1.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: screenWidth,
              child: Text(
                phaseTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenHeight * 0.03,
                  fontFamily: 'heading',
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            Image.asset(
              imagePath,
              height: 250,
              // width: screenWidth,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 16),
            Text(
              content,
              style: TextStyle(
                color: Colors.white,
                fontSize: screenHeight * 0.025,
                fontFamily: textFont,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  void scrollToPhase(int phaseIndex) {
    final double screenHeight = MediaQuery.of(context).size.height - 115;
    final double scrollPosition = screenHeight * phaseIndex;
    _scrollController.animateTo(
      scrollPosition,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
