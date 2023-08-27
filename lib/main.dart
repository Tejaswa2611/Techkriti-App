import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:techkriti/Screens/landing.dart';
import 'package:techkriti/Services/auth_services.dart';
import 'package:techkriti/providers/user_provider.dart';
import 'package:techkriti/router.dart';
import 'package:upgrader/upgrader.dart';

import 'Widgets/hex_to_color.dart';
import 'details/details_page.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => UserProvider(),
      ),
    ], child: const MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TOSC',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          // color: hexToColor('#4169E1'),
          // color: Colors.blue.shade900,
          titleTextStyle: const TextStyle(color: Colors.white),
          // color: hexToColor('#F9CB12'),// tosc yello
          // color: hexToColor('#00FFFF'), // Cyan
          // color: Colors.blue.shade900, // DarkBlue
          // color: hexToColor('#87CEEB'), // LightBlue
          // color: hexToColor('#0B1D21'), // DarkGreen
          color: hexToColor('#56A5EC'), // Light Blue
          // color: hexToColor('#D9D9D9'), grey
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: UpgradeAlert(
        upgrader: Upgrader(
          durationUntilAlertAgain: const Duration(hours: 2),
          dialogStyle: UpgradeDialogStyle.cupertino,
          canDismissDialog: false,
          shouldPopScope: () => false,
          showIgnore: false,
          showLater: false,
        ),
        child: Provider.of<UserProvider>(context).user.token.isNotEmpty
            ? const UserDetailsPage()
            : const LandingPage(),
      ),
    );
  }
}
