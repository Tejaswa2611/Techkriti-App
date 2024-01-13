// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// // import 'package:techkriti/Screens/admin_page.dart';
// import 'package:techkriti/TOSC/Screens/login_page.dart';
// import 'package:techkriti/TOSC/Services/auth_services.dart';
// import 'package:techkriti/TOSC/Widgets/button.dart';
// import 'package:techkriti/TOSC/constants/colors_and_fonts.dart';
// import 'package:techkriti/TOSC/constants/utils.dart';
// import 'package:techkriti/TOSC/details/details_page.dart';
// import 'package:techkriti/TOSC/providers/user_provider.dart';
// import 'package:url_launcher/url_launcher.dart';
// import '../Widgets/login_text_field.dart';

// bool _isLoading = false;

// class RegistrationPage extends StatefulWidget {
//   static const String routeName = '/register';
//   const RegistrationPage({Key? key}) : super(key: key);

//   @override
//   State<RegistrationPage> createState() => _RegistrationPageState();
// }

// class _RegistrationPageState extends State<RegistrationPage> {
//   // text editing controllers
//   final nameController = TextEditingController();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final phoneController = TextEditingController();
//   // final confirmPasswordController = TextEditingController();
//   final AuthService authService = AuthService();

//   // register user method
//   void signUpUser() async {
//     authService.signUpUser(
//       context: context,
//       email: emailController.text,
//       password: passwordController.text,
//       name: nameController.text,
//       phone: phoneController.text,
//       setLoading: (isLoading) {
//         setState(() {
//           _isLoading = isLoading;
//         });
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     // final screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(14.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const SizedBox(height: 24),
//               // logo
//               Image.asset(
//                 'assets/images/TOSC_black.png',
//                 height: 125,
//               ),

//               const SizedBox(height: 24),

//               // welcome, register now!
//               Text(
//                 'Welcome! Register now!',
//                 style: TextStyle(
//                   color: Colors.grey[600],
//                   fontSize: 16,
//                   fontFamily: headingFont,
//                 ),
//               ),

//               const SizedBox(height: 12),

//               // name textfield
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                 child: MyTextField(
//                   controller: nameController,
//                   hintText: 'Name',
//                   obscureText: false,
//                   icon: Icons.person,
//                 ),
//               ),

//               const SizedBox(height: 10),

//               // email textfield
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                 child: MyTextField(
//                   controller: emailController,
//                   hintText: 'Email',
//                   obscureText: false,
//                   icon: Icons.email_outlined,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                 child: MyTextField(
//                   controller: phoneController,
//                   hintText: 'Phone No.',
//                   obscureText: false,
//                   icon: Icons.phone_android,
//                 ),
//               ),

//               const SizedBox(height: 10),

//               // password textfield
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                 child: MyTextField(
//                   controller: passwordController,
//                   hintText: 'Password',
//                   obscureText: true,
//                   icon: Icons.lock,
//                 ),
//               ),

//               const SizedBox(height: 10),

//               // confirm password textfield
//               // Padding(
//               //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
//               //   child: MyTextField(
//               //     controller: confirmPasswordController,
//               //     hintText: 'Confirm Password',
//               //     obscureText: true,
//               //   ),
//               // ),

//               // SizedBox(height: screenHeight * 0.03),

//               // Row(
//               //   mainAxisAlignment: MainAxisAlignment.end,
//               //   children: [
//               //     Text(
//               //       'Forgot Password?',
//               //       style: TextStyle(color: Colors.grey[600]),
//               //     ),
//               //   ],
//               // ),
//               const SizedBox(height: 15),
//               // register button
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 12.0),
//                 child: _isLoading
//                     ? () {
//                         debugPrint('isLoading');
//                         return const CircularProgressIndicator(
//                             color: Colors.black);
//                       }() // Show loading indicator
//                     : Button(
//                         text: 'REGISTER',
//                         onTap: signUpUser,
//                       ),
//               ),

//               // Padding(
//               //   padding: const EdgeInsets.symmetric(horizontal: 12.0),
//               //   child: Button(
//               //     text: 'REGISTER',
//               //     onTap: signUpUser,
//               //   ),
//               // ),

//               const SizedBox(height: 18),
//               // already a member? sign in instead
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Already a member?',
//                     style: TextStyle(
//                       color: Colors.grey[700],
//                       fontFamily: headingFont,
//                     ),
//                   ),
//                   const SizedBox(width: 4),
//                   GestureDetector(
//                     onTap: () {
//                       try {
//                         Navigator.pushReplacementNamed(
//                           context,
//                           Provider.of<UserProvider>(context, listen: false)
//                                   .user
//                                   .token
//                                   .isNotEmpty
//                               ? UserDetailsPage.routeName
//                               : LoginPage.routeName,
//                         );
//                       } catch (e) {
//                         showSnackBar(context, e.toString());
//                       }
//                     },
//                     child: const Text(
//                       'Sign in',
//                       style: TextStyle(
//                         color: Colors.blue,
//                         fontWeight: FontWeight.bold,
//                         fontFamily: headingFont,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 40,
//               ),
//               ElevatedButton(
//                 onPressed: _launchGoogleForm,
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blue,
//                   padding: const EdgeInsets.all(8),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(
//                         8), // You can adjust the border radius
//                   ),
//                 ),
//                 child: const Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Flexible(
//                       // This will ensure the text wraps properly
//                       child: Text(
//                         'If you are facing any problems in registrations, kindly fill this form',
//                         style: TextStyle(
//                           fontFamily: textFont,
//                             fontSize: 14,
//                             color: Colors.white), // Adjust text style
//                         textAlign: TextAlign.center, // Center align the text
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// _launchGoogleForm() async {
//   const url =
//       'https://docs.google.com/forms/d/e/1FAIpQLSfZxnNfmTYEpPZf6qFI5wAfPG5wsWE9thTzuQcIStWKHJ6-BQ/viewform?usp=sf_link';
//   debugPrint("Launching Google Form");
//   final uri = Uri.parse(url);
//   if (await canLaunchUrl(uri)) {
//     await launchUrl(uri);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
