import 'package:flutter/material.dart';
import 'package:techkriti/Screens/homescreen.dart';
import 'package:techkriti/Screens/landing.dart';
import 'package:techkriti/Screens/login_page.dart';
import 'package:techkriti/Screens/pastpapers.dart';
import 'package:techkriti/Screens/register_page.dart';
import 'package:techkriti/Screens/forgotpassword.dart';
import 'package:techkriti/details/details_page.dart';
import 'package:techkriti/hiddendrawers/hidden_dr_conduction.dart';
import 'package:techkriti/hiddendrawers/hidden_dr_contact.dart';
import 'package:techkriti/hiddendrawers/hidden_dr_faq.dart';
import 'package:techkriti/hiddendrawers/hidden_dr_gallery.dart';
import 'package:techkriti/hiddendrawers/hidden_dr_homescreen.dart';
import 'package:techkriti/hiddendrawers/hidden_dr_homescreen2.dart';
import 'package:techkriti/hiddendrawers/hidden_dr_prizes.dart';
import 'package:techkriti/hiddendrawers/hidden_dr_sponsors.dart';
import 'package:techkriti/hiddendrawers/hidden_dr_testimonial.dart';
import 'constants/colors_and_fonts.dart';
import 'hiddendrawers/hidden_drawer_about.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case HiddenDrawerConduction.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HiddenDrawerConduction(),
      );
    case HiddenDrawerHomeScreen2.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HiddenDrawerHomeScreen2(),
      );
    case HiddenDrawerContact.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HiddenDrawerContact(),
      );
    case HiddenDrawerFaq.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HiddenDrawerFaq(),
      );
    case HiddenDrawerGallery.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HiddenDrawerGallery(),
      );
    case HiddenDrawerPrizes.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HiddenDrawerPrizes(),
      );
    case HiddenDrawerSponsers.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HiddenDrawerSponsers(),
      );
    case HiddenDrawerTestimonial.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HiddenDrawerTestimonial(),
      );
    case HiddenDrawer.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HiddenDrawer(),
      );
    case LoginPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const LoginPage(),
      );
    case RegistrationPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const RegistrationPage(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    case UserDetailsPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const UserDetailsPage(),
      );
    case LandingPage.routename:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const LandingPage(),
      );
    case HiddenDrawerHomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HiddenDrawerHomeScreen(),
      );
    case ForgotPasswordScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) =>const ForgotPasswordScreen(),
      );
    case PastPapersPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) =>const PastPapersPage(),
      );
    // case ResetPasswordScreen.routeName:
    //   return MaterialPageRoute(
    //     settings: routeSettings,
    //     builder: (_) => const ResetPasswordScreen(),
    //   );
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
