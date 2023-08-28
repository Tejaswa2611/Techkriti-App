import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:provider/provider.dart';
import 'package:techkriti/Screens/conduction.dart';
import 'package:techkriti/Screens/contactus.dart';
import 'package:techkriti/Screens/faq_tosc.dart';
import 'package:techkriti/Screens/homescreen.dart';
import 'package:techkriti/Screens/login_page.dart';
import 'package:techkriti/Screens/notification_screen.dart';
import 'package:techkriti/Screens/prizes.dart';
import 'package:techkriti/Screens/testimonial.dart';
import 'package:techkriti/Services/auth_services.dart';
import 'package:techkriti/Services/notification_services.dart';
import 'package:techkriti/details/details_page.dart';
import 'package:techkriti/providers/user_provider.dart';
import '../Screens/about.dart';
import '../Screens/gallery2.dart';
import '../Screens/pastpapers.dart';
import '../Screens/sponsors.dart';
import '../constants/colors_and_fonts.dart';
import 'hidden_dr_homescreen2.dart';

class HiddenDrawerHomeScreen extends StatefulWidget {
  static const String routeName = '/homescreen_drawer';
  const HiddenDrawerHomeScreen({super.key});

  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

  @override
  State<HiddenDrawerHomeScreen> createState() => _HiddenDrawerHomeScreenState();
}

class _HiddenDrawerHomeScreenState extends State<HiddenDrawerHomeScreen> {
  int pos = 1;
  final AuthService authService = AuthService();
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

    // authService.getUserData(context: context);
    // Provider.of<UserProvider>(context, listen: false);
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
            name: 'Home',
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.blue.shade900,
            onTap: () {
              pos = 1;
            }),
        const HomeScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Conduction',
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.blue.shade900,
            onTap: () {
              pos = 2;
            }),
        const Conduction(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'About',
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.blue.shade900,
            onTap: () {
              pos = 3;
            }),
        const About(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Prizes',
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.blue.shade900,
            onTap: () {
              pos = 4;
            }),
        const PrizesPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Gallery',
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.blue.shade900,
            onTap: () {
              pos = 5;
            }),
        const GalleryPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Testimonials',
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.blue.shade900,
            onTap: () {
              pos = 6;
            }),
        TestimonialsPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Sponsors',
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.blue.shade900,
            onTap: () {
              pos = 7;
            }),
        const SponsorsPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'FAQ',
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.blue.shade900,
            onTap: () {
              pos = 8;
            }),
        const FAQPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Past Papers',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.blue.shade900,
           onTap: () {
              pos = 9;
            }
        ),
        
        const PastPapersPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Contact Us',
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.blue.shade900,
            onTap: () {
              pos = 10;
            }),
        const ContactUs(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: HiddenDrawerHomeScreen.scaffoldKey,
      body: WillPopScope(
        onWillPop: () async {
          if (pos != 1) {
            pos =1;
            debugPrint("Not one definaetly");
            Navigator.pushReplacementNamed(
                context, HiddenDrawerHomeScreen2.routeName);
            return true; // Prevent default back behavior
          }
          debugPrint("It is already 1");
          return true; // Allow default back behavior if on the first tab
        },
        child: HiddenDrawerMenu(
          elevationAppBar: 0,
          backgroundColorMenu: Colors.white,
          screens: _pages,
          initPositionSelected: 0,
          slidePercent: 60,
          withAutoTittleName: false,
          isTitleCentered: true,
          tittleAppBar: Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              'assets/images/TOSC_white.png',
              // width: 200,
              height: 45,
            ),
          ),
          // styleAutoTittleName:
          // //    const TextStyle(fontSize: 20, fontFamily: headingFont),
          actionsAppBar: [
            IconButton(
              icon: const Icon(Icons.account_circle_sharp),
              onPressed: () {
                debugPrint("pressd");
                Provider.of<UserProvider>(context, listen: false)
                        .user
                        .token.isNotEmpty
                    ? Navigator.pushNamed(context, UserDetailsPage.routeName)
                    : Navigator.pushNamed(context, LoginPage.routeName);
              },
            ),
            // IconButton(
            //   icon: const Icon(Icons.notifications),
            //   onPressed: () {
            //     Navigator.pushNamed(context, MessagesPage.routeName);
            //   }
            // ),

            // Consumer<UserProvider>(
            //   builder: (context, userProvider, _) {
            //     return IconButton(
            //       icon: const Icon(Icons.account_circle_sharp),
            //       onPressed: () {
            //         if (userProvider.user.token.isNotEmpty) {
            //           Navigator.pushNamed(context, UserDetailsPage.routeName);
            //         } else {
            //           Navigator.pushNamed(context, LoginPage.routeName);
            //         }
            //       },
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
