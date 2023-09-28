// // ignore_for_file: library_private_types_in_public_api

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// import '../constants/global_variables.dart';

// class PasswordManagementPage extends StatefulWidget {
//   static const String routeName = '/password-reset';

//   const PasswordManagementPage({super.key});

//   @override
//   _PasswordManagementPageState createState() => _PasswordManagementPageState();
// }

// class _PasswordManagementPageState extends State<PasswordManagementPage> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _otpController = TextEditingController();
//   final TextEditingController _newPasswordController = TextEditingController();
//   bool _loading = false;
//   bool _showOtpField = false;

//   void _showSnackBar(String message) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(message),
//       ),
//     );
//   }

//   Future<void> _generateOTP() async {
//     final String email = _emailController.text;

//     if (email.isEmpty) {
//       _showSnackBar('Please enter an email.');
//       return;
//     }

//     setState(() => _loading = true);

//     try {
//       final http.Response response = await http.post(
//         Uri.parse('$uri/api/generateotpforrecovery'),
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: jsonEncode({'email': email}),
//       );

//       if (response.statusCode == 200) {
//         final responseData = jsonDecode(response.body);
//         if (responseData['success'] == true) {
//           _showSnackBar('OTP sent to your email.');
//           setState(() {
//             _showOtpField = true;
//           });
//         } else {
//           _showSnackBar('Failed to generate OTP.');
//         }
//       } else {
//         _showSnackBar('An error occurred. Please try again.');
//       }
//     } catch (error) {
//       _showSnackBar('An error occurred. Please try again.');
//     }

//     setState(() => _loading = false);
//   }

//   Future<void> _verifyOTPAndChangePassword() async {
//     final String email = _emailController.text;
//     final String otp = _otpController.text;
//     final String newPassword = _newPasswordController.text;

//     if (email.isEmpty || otp.isEmpty || newPassword.isEmpty) {
//       _showSnackBar('Please fill all fields.');
//       return;
//     }

//     setState(() => _loading = true);

//     try {
//       final http.Response response = await http.post(
//         Uri.parse('$uri/api/changepass'),
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: jsonEncode({'email': email, 'password': newPassword, 'otp': otp}),
//       );

//       if (response.statusCode == 200) {
//         final responseData = jsonDecode(response.body);
//         if (responseData['success'] == true) {
//           _showSnackBar('Password changed successfully.');
//           // Navigate to a relevant screen after password change
//         } else {
//           _showSnackBar('Password change failed. Please verify OTP.');
//         }
//       } else {
//         _showSnackBar('An error occurred. Please try again.');
//       }
//     } catch (error) {
//       _showSnackBar('An error occurred. Please try again.');
//     }

//     setState(() => _loading = false);
//   }

// ignore_for_file: use_build_context_synchronously, library_private_types_in_public_api

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Password Management'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _emailController,
//               decoration: const InputDecoration(labelText: 'Email'),
//             ),
//             ElevatedButton(
//               onPressed: _loading ? null : _generateOTP,
//               child: _loading
//                   ? const CircularProgressIndicator()
//                   : const Text('Generate OTP for Recovery'),
//             ),
//             if (_showOtpField)
//               Column(
//                 children: [
//                   TextField(
//                     controller: _otpController,
//                     decoration: const InputDecoration(labelText: 'OTP'),
//                   ),
//                   TextField(
//                     controller: _newPasswordController,
//                     decoration: const InputDecoration(labelText: 'New Password'),
//                   ),
//                   ElevatedButton(
//                     onPressed: _loading ? null : _verifyOTPAndChangePassword,
//                     child: _loading
//                         ? const CircularProgressIndicator()
//                         : const Text('Verify OTP and Change Password'),
//                   ),
//                 ],
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:techkriti/Screens/login_page.dart';
// import 'dart:convert';

// import '../Widgets/button.dart';
// import '../Widgets/login_text_field.dart';
// import '../constants/global_variables.dart';

// class PasswordResetPage extends StatefulWidget {
//   static const String routeName = '/password-reset';

//   const PasswordResetPage({Key? key}) : super(key: key);

//   @override
//   _PasswordResetPageState createState() => _PasswordResetPageState();
// }

// class _PasswordResetPageState extends State<PasswordResetPage> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _otpController = TextEditingController();
//   final TextEditingController _newPasswordController = TextEditingController();
//   bool _loading = false;
//   bool _showOtpField = false;

//   void _showSnackBar(String message) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(message),
//       ),
//     );
//   }

//   // Future<void> _generateOTP() async {
//   //   final String email = _emailController.text;

//   //   if (email.isEmpty) {
//   //     _showSnackBar('Please enter an email.');
//   //     return;
//   //   }

//   //   setState(() => _loading = true);

//   //   try {
//   //     final http.Response response = await http.post(
//   //       Uri.parse('$uri/api/generateotpforrecovery'),
//   //       headers: <String, String>{
//   //         'Content-Type': 'application/json; charset=UTF-8',
//   //       },
//   //       body: jsonEncode({'email': email}),
//   //     );

//   //     final responseData = jsonDecode(response.body);

//   //     if (response.statusCode == 200) {
//   //       if (responseData['success'] == true) {
//   //         _showSnackBar('OTP sent to your email.');
//   //         setState(() {
//   //           _showOtpField = true;
//   //         });
//   //       } else {
//   //         _showSnackBar('Failed to generate OTP.');
//   //       }
//   //     } else {
//   //       _showSnackBar(responseData['message']);
//   //     }
//   //   } catch (error) {
//   //     _showSnackBar(error.toString());
//   //   }

//   //   setState(() => _loading = false);
//   // }

//   // Future<void> _verifyOTPAndChangePassword() async {
//   //   final String email = _emailController.text;
//   //   final String otp = _otpController.text;
//   //   final String newPassword = _newPasswordController.text;

//   //   if (email.isEmpty || otp.isEmpty || newPassword.isEmpty) {
//   //     _showSnackBar('Please fill all fields.');
//   //     return;
//   //   }

//   //   setState(() => _loading = true);

//   //   try {
//   //     final http.Response response = await http.post(
//   //       Uri.parse('$uri/api/changepass'),
//   //       headers: <String, String>{
//   //         'Content-Type': 'application/json; charset=UTF-8',
//   //       },
//   //       body: jsonEncode({'email': email, 'otp': otp, 'password': newPassword}),
//   //     );

//   //     debugPrint('Response status code: ${response.statusCode}');
//   //     debugPrint('Response body: ${response.body}');

//   //       final responseData = jsonDecode(response.body);
//   //     if (response.statusCode == 200) {
//   //       if (responseData['success'] == true) {
//   //         _showSnackBar('Password changed successfully.');
//   //         Navigator.pushNamedAndRemoveUntil(context, LoginPage.routeName, (route) => false);
//   //       } else {
//   //         _showSnackBar('Password change failed. Please verify OTP.');
//   //       }
//   //     } else {
//   //       _showSnackBar(responseData['message']);
//   //     }
//   //   } catch (error) {
//   //     debugPrint('Error changing password: $error');
//   //     _showSnackBar(error.toString());
//   //   }

//   //   setState(() => _loading = false);
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // const SizedBox(height: 24),
//               Image.asset('assets/images/forgotpassword.jpg'),
//               // Email textfield
//               MyTextField(
//                 controller: _emailController,
//                 // decoration: const InputDecoration(
//                 //   labelText: 'Email',
//                 // ),
//                 hintText: 'Email',
//                 obscureText: false,
//                 icon: Icons.email,
//               ),

//               const SizedBox(height: 18),

//               // Generate OTP button
//               // ElevatedButton(
//               //   onPressed: _loading ? null : _generateOTP,
//               //   child: _loading
//               //       ? const CircularProgressIndicator()
//               //       : const Text('Generate OTP for Recovery'),
//               // ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 12.0),
//                 child: _loading
//                     ? const CircularProgressIndicator(
//                         color: Colors.black,
//                       )
//                     : Button(
//                         text: 'Generate OTP',
//                         onTap: () {
//                           // _generateOTP();
//                         }, //Null,
//                       ),
//               ),

//               if (_showOtpField) ...[
//                 const SizedBox(height: 24),

//                 // OTP textfield
//                 MyTextField(
//                   controller: _otpController,
//                   // decoration: const InputDecoration(
//                   //   labelText: 'OTP',
//                   // ),
//                   hintText: "Enter OTP received on your gmail address",
//                   obscureText: false,
//                   icon: Icons.lock,
//                 ),

//                 const SizedBox(height: 18),

//                 // New Password textfield
//                 MyTextField(
//                   controller: _newPasswordController,
//                   // decoration: const InputDecoration(
//                   //   labelText: 'New Password',
//                   // ),
//                   hintText: "Enter New password",
//                   obscureText: true,
//                   icon: Icons.lock,
//                 ),

//                 const SizedBox(height: 18),
//                 // ElevatedButton(
//                 //   onPressed: _loading ? null : _verifyOTPAndChangePassword,
//                 //   child: _loading
//                 //       ? const CircularProgressIndicator()
//                 //       : const Text('Verify OTP and Change Password'),
//                 // ),
//                 _loading
//                     ? const CircularProgressIndicator(
//                         color: Colors.black,
//                       )
//                     : ButtonSmall(
//                         text: 'Verify OTP and Change Password',
//                         onTap: () {
//                           // _verifyOTPAndChangePassword();
//                         }, //Null,
//                       ),
//               ],
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:techkriti/Screens/login_page.dart';
import 'dart:convert';

import '../Widgets/button.dart';
import '../Widgets/login_text_field.dart';
import '../constants/global_variables.dart';

class PasswordResetPage extends StatefulWidget {
  static const String routeName = '/password-reset';

  const PasswordResetPage({Key? key}) : super(key: key);

  @override
  _PasswordResetPageState createState() => _PasswordResetPageState();
}

class _PasswordResetPageState extends State<PasswordResetPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  bool _loading = false;
  bool _showOtpField = false;

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  Future<void> _generateOTP() async {
    final String email = _emailController.text;

    if (email.isEmpty) {
      _showSnackBar('Please enter an email.');
      return;
    }

    setState(() => _loading = true);

    try {
      final http.Response response = await http.post(
        Uri.parse('$uri/api/generateotpforrecovery'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({'email': email}),
      );

      final responseData = jsonDecode(response.body);

      if (response.statusCode == 200) {
        if (responseData['success'] == true) {
          _showSnackBar('OTP sent to your email.');
          setState(() {
            _showOtpField = true;
          });
        } else {
          _showSnackBar('Failed to generate OTP.');
        }
      } else {
        _showSnackBar(responseData['message']);
      }
    } catch (error) {
      _showSnackBar('An error occurred. Please try again.');
    }

    setState(() => _loading = false);
  }

  Future<void> _verifyOTPAndChangePassword() async {
    final String email = _emailController.text;
    final String otp = _otpController.text;
    final String newPassword = _newPasswordController.text;

    if (email.isEmpty || otp.isEmpty || newPassword.isEmpty) {
      _showSnackBar('Please fill all fields.');
      return;
    }

    setState(() => _loading = true);

    try {
      final http.Response response = await http.post(
        Uri.parse('$uri/api/changepass'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({'email': email, 'otp': otp, 'password': newPassword}),
      );

      debugPrint('Response status code: ${response.statusCode}');
      debugPrint('Response body: ${response.body}');

      final responseData = jsonDecode(response.body);
      if (response.statusCode == 200) {
        if (responseData['success'] == true) {
          _showSnackBar('Password changed successfully.');
          Navigator.pushNamedAndRemoveUntil(
              context, LoginPage.routeName, (route) => false);
        } else {
          _showSnackBar('Password change failed. Please verify OTP.');
        }
      } else {
        _showSnackBar(responseData['message']);
      }
    } catch (error) {
      debugPrint('Error changing password: $error');
      _showSnackBar('An error occurred. Please try again.');
    }

    setState(() => _loading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/forgotpassword.jpg'),

              // Email textfield
              MyTextField(
                controller: _emailController,
                hintText: 'Email',
                obscureText: false,
                icon: Icons.email,
              ),

              const SizedBox(height: 18),

              // Generate OTP button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: _loading
                    ? const CircularProgressIndicator(
                        color: Colors.black,
                      )
                    : Button(
                        text: 'Generate OTP',
                        onTap: _generateOTP,
                      ),
              ),

              if (_showOtpField) ...[
                const SizedBox(height: 24),

                // OTP textfield
                MyTextField(
                  controller: _otpController,
                  hintText: "Enter OTP received on your gmail address",
                  obscureText: false,
                  icon: Icons.lock,
                ),

                const SizedBox(height: 18),

                // New Password textfield
                MyTextField(
                  controller: _newPasswordController,
                  hintText: "Enter New password",
                  obscureText: true,
                  icon: Icons.lock,
                ),

                const SizedBox(height: 18),

                // Verify OTP and Change Password button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: _loading
                      ? const CircularProgressIndicator(
                          color: Colors.black,
                        )
                      : Button(
                          text: 'Verify OTP and Change Password',
                          onTap: _verifyOTPAndChangePassword,
                        ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
