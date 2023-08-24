import 'package:flutter/material.dart';
import 'package:techkriti/Screens/register_page.dart';
import 'package:techkriti/Screens/forgotpassword.dart';
import 'package:techkriti/Widgets/button.dart';
import 'package:techkriti/Widgets/colors_and_fonts.dart';
// import 'package:techkriti/hidden_drawer.dart';
import '../Widgets/login_square_tile.dart';
import '../Widgets/login_text_field.dart';
import 'package:techkriti/Services/auth_services.dart';

bool _isLoading = false;

class LoginPage extends StatefulWidget {
  static const String routeName = '/login';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final AuthService authService = AuthService();

  // sign user in method
  void signInUser() {
    authService.signInUser(
      context: context,
      email: usernameController.text,
      password: passwordController.text,
      setLoading: (isLoading) {
        setState(() {
          _isLoading = isLoading;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              // logo
              Image.asset(
                'assets/images/TOSC_black.png',
                height: 125,
              ),

              const SizedBox(height: 42),

              // welcome back, you've been missed!
              Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                  fontFamily: headingFont,
                ),
              ),

              const SizedBox(height: 12),

              // username textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),
              ),

              const SizedBox(height: 10),

              // password textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
              ),

              const SizedBox(height: 10),

              // forgot password?
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap:(){
                      Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontFamily: headingFont,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 18),

              // sign in button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: _isLoading
                    ? const CircularProgressIndicator(color: Colors.black,)
                    : Button(
                        text: 'SIGN IN',
                        onTap: () {
                          signInUser();
                        }, //Null,
                      ),
              ),

              const SizedBox(height: 18),

              // or continue with
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
              //   child: Row(
              //     children: [
              //       Expanded(
              //         child: Divider(
              //           thickness: 0.5,
              //           color: Colors.grey[400],
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.symmetric(horizontal: 10.0),
              //         child: Text(
              //           'Or continue with',
              //           style: TextStyle(
              //             color: Colors.grey[700],
              //             fontFamily: headingFont,
              //           ),
              //         ),
              //       ),
              //       Expanded(
              //         child: Divider(
              //           thickness: 0.5,
              //           color: Colors.grey[400],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              const SizedBox(height: 15),

              // google + apple sign in buttons
              // const Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     // google button
              //     SquareTile(imagePath: 'assets/images/google.png'),

              //     SizedBox(width: 25),

              //     // apple button
              //     SquareTile(imagePath: 'assets/images/apple.png')
              //   ],
              // ),

              const SizedBox(height: 15),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontFamily: headingFont,
                    ),
                  ),
                  const SizedBox(width: 4),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, RegistrationPage.routeName);
                    },
                    child: const Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontFamily: headingFont,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
