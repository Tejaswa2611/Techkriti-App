import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:techkriti/Screens/landing.dart';
import 'package:techkriti/Services/auth_services.dart';
import 'package:techkriti/providers/user_provider.dart';
import 'package:techkriti/router.dart';

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
          color: Colors.blue.shade900, // DarkBlue
          // color: hexToColor('#87CEEB'), // LightBlue
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: Provider.of<UserProvider>(context).user.token.isNotEmpty
          ? const UserDetailsPage()
          : const LandingPage(),
    );
  }
}
