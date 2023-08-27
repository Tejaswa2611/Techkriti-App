import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:techkriti/Screens/conduction.dart';
import 'package:techkriti/Screens/contactus.dart';
import 'package:techkriti/Screens/faq_tosc.dart';
import 'package:techkriti/Screens/prizes.dart';
import 'package:techkriti/Screens/testimonial.dart';
import 'package:techkriti/Services/notification_services.dart';
import '../Screens/about.dart';
import '../Screens/gallery2.dart';
import '../Screens/homescreen.dart';
import '../Screens/pastpapers.dart';
import '../Screens/sponsors.dart';
import '../constants/colors_and_fonts.dart';
import '../Widgets/hex_to_color.dart';

class HiddenDrawerContact extends StatefulWidget {
  static const String routeName  = '/contact-us';
  const HiddenDrawerContact({super.key});

  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

  @override
  State<HiddenDrawerContact> createState() => _HiddenDrawerContactState();
}

class _HiddenDrawerContactState extends State<HiddenDrawerContact> {
  List<ScreenHiddenDrawer> _pages = [];
  final myTextStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: Colors.black,
    fontFamily: headingFont,
  );
  NotificationServices notificationServices = NotificationServices();

  @override
  void initState() {
    super.initState();
    notificationServices.requestNotificationPermission();
    notificationServices.firebaseInit(context);
    // notificationServices.isTokenRefresh();
    notificationServices.setupInteractMessage(context);
    notificationServices.getDeviceToken().then(
      (value) {
        debugPrint('device token');
        debugPrint(value);
      },
    );
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Contact Us',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.blue.shade900,
        ),
        const ContactUs(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Home',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.blue.shade900,
        ),
        const HomeScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'About',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.blue.shade900,
        ),
        const About(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Conduction',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.blue.shade900,
        ),
        const Conduction(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Prizes',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.blue.shade900,
        ),
        const PrizesPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Gallery',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.blue.shade900,
        ),
        const GalleryPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Testimonials',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.blue.shade900,
        ),
        TestimonialsPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Sponsors',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.blue.shade900,
        ),
        const SponsorsPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'FAQ',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.blue.shade900,
        ),
        const FAQPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Past Papers',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.blue.shade900,
        ),
        const PastPapersPage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: HiddenDrawerContact.scaffoldKey,
      body: HiddenDrawerMenu(
        backgroundColorMenu: hexToColor('#FAF9F6'),
        screens: _pages,
        initPositionSelected: 0,
        slidePercent: 60,
        styleAutoTittleName:
            const TextStyle(fontSize: 20, fontFamily: headingFont),
        // actionsAppBar: [
        //   IconButton(
        //     icon: const Icon(Icons.search),
        //     onPressed: () {
        //       // Add your search functionality here
        //     },
        //   ),
        //   IconButton(
        //     icon: const Icon(Icons.notifications),
        //     onPressed: () {
        //       // Add your notification functionality here
        //     },
        //   ),
        // ],
      ),
    );
  }
}
