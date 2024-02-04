import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:techkriti/T24/navigation/map.dart';
import 'package:techkriti/T24/navigation/schedule.dart';
import 'package:techkriti/T24/navigation/sponsor.dart';
import 'package:techkriti/T24/screens/landing.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int index1 = 0;

  List<Widget> pages = [
    const LandingPage(),
    const Maps(),
    const Schedule(),
    const Sponsor(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(index1),
      bottomNavigationBar: Container(
        color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: GNav(
            backgroundColor: Colors.black87,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            padding: const EdgeInsets.all(10),
            tabMargin: const EdgeInsets.only(top: 4),
            gap: 10,
            // rippleColor: const Color.fromARGB(255, 55, 255, 245)
            //     .withOpacity(0.5), // tab button ripple color when pressed
            // hoverColor: Colors.grey, // tab button hover color
            // haptic: true, // haptic feedback
            tabBorderRadius: 8,
            tabActiveBorder:
                Border.all(color: Colors.grey, width: 0.5), // tab button border
            tabBorder:
                Border.all(color: Colors.grey, width: 0.5), // tab button border
            // tabShadow: [
            //   BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
            // ], // tab button shadow
            curve: Curves.easeInOutCubicEmphasized, // tab animation curves
            // duration: const Duration(milliseconds: 700), // tab animation duration
            //  gap: 7, // the tab button gap between icon and text
            // color:
            //     const Color.fromARGB(255, 55, 255, 245), // unselected icon color
            // activeColor: const Color.fromARGB(
            //     255, 55, 255, 245), // selected icon and text color
            // iconSize: 24, // tab button icon size
            // tabBackgroundColor: const Color.fromARGB(255, 55, 255, 245)
            //     .withOpacity(0.2), // selected tab background color
            // padding: const EdgeInsets.symmetric(
            //     horizontal: 20, vertical: 6), // navigation bar padding
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.navigation,
                text: 'Maps',
              ),
              GButton(
                icon: Icons.schedule,
                text: 'Schedule',
              ),
              GButton(
                icon: Icons.people,
                text: 'Sponsors',
              )
            ],
            selectedIndex: index1,
            onTabChange: (index) {
              setState(() {
                index1 = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
