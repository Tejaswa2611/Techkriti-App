import 'package:flutter/material.dart';
import 'package:techkriti/T24/constants/colors_and_fonts.dart';
import 'package:techkriti/T24/screens/competitions/competition_page.dart';
import 'package:techkriti/T24/screens/gallery.dart';
import 'package:techkriti/T24/screens/workshops/workshop_page.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case CompetitionPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const CompetitionPage(),
      );
    case WorkshopPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const WorkshopPage(),
      );
    case GPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const GPage(),
      );
   
    

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text(
              "This Page does not exist",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black,
                fontFamily: headingFont,
              ),
            ),
          ),
        ),
      );
  }
}
