// import 'package:flutter/material.dart';
// import 'package:techkriti/TOSC/Screens/register_page.dart';
// import 'package:techkriti/TOSC/hiddendrawers/hidden_dr_homescreen.dart';
// import 'package:url_launcher/url_launcher.dart';
// import '../Services/notification_services.dart';
// import '../Widgets/button.dart';
// import '../../widgets/hex_to_color.dart';
// import '../../widgets/vertical_write.dart';
// import 'login_page.dart';

// class LandingPage extends StatefulWidget {
//   static const String routename = 'landing-page';
//   const LandingPage({Key? key}) : super(key: key);

//   @override
//   State<LandingPage> createState() => _LandingPageState();
// }

// class _LandingPageState extends State<LandingPage> {
//   NotificationServices notificationServices = NotificationServices();
//   @override
//   void initState() {
//     super.initState();
//     super.initState();
//     super.initState();
//     notificationServices.requestNotificationPermission();
//     notificationServices.firebaseInit(context);
//     // notificationServices.isTokenRefresh();
//     notificationServices.setupInteractMessage(context);
//     notificationServices.getDeviceToken().then(
//       (value) {
//         debugPrint('device token');
//         debugPrint(value);
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;
//     final screenWidth = MediaQuery.of(context).size.width;
//     Color textColor = hexToColor("#BFACE0");

//     return Scaffold(
//       body: Container(
//         height: screenHeight,
//         width: screenWidth,
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/images/background.png'),
//             fit: BoxFit.fill,
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             // mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               SizedBox(height: screenHeight * 0.15),
//               SizedBox(
//                 height: 77,
//                 child: Image.asset(
//                   'assets/images/TOSC_white.png',
//                   // fit: BoxFit.fill,
//                 ),
//               ),
//               SizedBox(height: screenHeight * 0.1),
//               Padding(
//                 padding: const EdgeInsets.only(left: 15.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     CustomText(text: 'TECHKRITI', textColor: textColor),
//                     const SizedBox(height: 9),
//                     CustomText(text: 'OPEN', textColor: textColor),
//                     const SizedBox(height: 9),
//                     CustomText(text: 'SCHOOL', textColor: textColor),
//                     const SizedBox(height: 9),
//                     CustomText(text: 'CHAMPIONSHIP', textColor: textColor),
//                     const SizedBox(height: 9),
//                   ],
//                 ),
//               ),
//                SizedBox(height: screenHeight*0.1),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
//                 child: Center(
//                   child: Button(
//                     text: 'EXPLORE',
//                     onTap: () => Navigator.pushNamed(
//                         context, HiddenDrawerHomeScreen.routeName),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 15),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
//                 child: Center(
//                   child: Button(
//                       text: 'SIGN UP', 
//                       onTap: () =>
//                         Navigator.pushNamed(context, RegistrationPage.routeName),
//                       ),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
//                 child: Center(
//                   child: Button(
//                     text: 'SIGN IN',
//                     onTap: () =>
//                         Navigator.pushNamed(context, LoginPage.routeName),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 10),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// _launchRegistrationForm() async {
//   const url =
//       'https://docs.google.com/forms/d/e/1FAIpQLSc04AXXMDhQNC7b-6AyoUeZ3sMMZlS66-tovCCRksGfy-R1Bw/viewform?usp=sf_link';
//   debugPrint("Launching Google Form");
//   final uri = Uri.parse(url);
//   if (await canLaunchUrl(uri)) {
//     await launchUrl(uri);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
