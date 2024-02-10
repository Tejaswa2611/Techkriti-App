import 'package:flutter/material.dart';
import 'package:techkriti/T24/constants/colors_and_fonts.dart';
import 'package:techkriti/T24/navigation/map.dart';
import 'package:techkriti/T24/screens/4container/contactUs.dart';
import 'package:techkriti/T24/screens/4container/faqs.dart';
import 'package:techkriti/T24/screens/carousel/entrepre_carousel.dart';
import 'package:techkriti/T24/screens/carousel/misc_carousel.dart';
import 'package:techkriti/T24/screens/carousel/technical_carousel.dart';
import 'package:techkriti/T24/screens/competitions/competition_page.dart';
import 'package:techkriti/T24/screens/gallery.dart';
import 'package:techkriti/T24/screens/landing.dart';
import 'package:techkriti/T24/screens/workshops/workshop_page.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case LandingPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const LandingPage(),
      );
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
    // case Website.routeName:
    //   return MaterialPageRoute(
    //     settings: routeSettings,
    //     builder: (_) => const Website(),
    //   );
    // case Brochure.routeName:
    //   return MaterialPageRoute(
    //     settings: routeSettings,
    //     builder: (_) =>  Brochure(),
    //   );
    case ContactUs.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ContactUs(),
      );
    case FAQ.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const FAQ(),
      );
    case Maps.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Maps(),
      );
    case technical_carousel.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => technical_carousel(),
      );
    case entre_carousel.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => entre_carousel(),
      );
    case misc_carousel.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => misc_carousel(),
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
