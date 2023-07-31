import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:techkriti/Screens/admin_page.dart';
import 'package:techkriti/Screens/login_page.dart';
import 'package:techkriti/Services/auth_services.dart';
import 'package:techkriti/Widgets/button.dart';
import 'package:techkriti/Widgets/colors_and_fonts.dart';
import 'package:techkriti/providers/user_provider.dart';
import '../Widgets/login_text_field.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  // text editing controllers
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  // final confirmPasswordController = TextEditingController();
  final AuthService authService = AuthService();

  // register user method
  void signUpUser() {
    authService.signUpUser(
      context: context,
      email: emailController.text,
      password: passwordController.text,
      name: nameController.text,
    );
  }


  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.04),
              // logo
              Image.asset('assets/images/TOSC logo.png'),

              SizedBox(height: screenHeight * 0.06),

              // welcome, register now!
              Text(
                'Welcome! Register now!',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                  fontFamily: headingFont,
                ),
              ),

              SizedBox(height: screenHeight * 0.02),

              // name textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: MyTextField(
                  controller: nameController,
                  hintText: 'Name',
                  obscureText: false,
                ),
              ),

              const SizedBox(height: 10),

              // email textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: MyTextField(
                  controller: emailController,
                  hintText: 'Email',
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

              // confirm password textfield
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
              //   child: MyTextField(
              //     controller: confirmPasswordController,
              //     hintText: 'Confirm Password',
              //     obscureText: true,
              //   ),
              // ),

              // SizedBox(height: screenHeight * 0.03),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.025),
              // register button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Button(
                  text: 'REGISTER',
                  onTap: signUpUser,
                ),
              ),

              SizedBox(height: screenHeight * 0.03),

              // already a member? sign in instead
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already a member?',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontFamily: headingFont,
                    ),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Provider.of<UserProvider>(context).user.token.isNotEmpty ? const AdminPage(): const LoginPage()),
                      );
                    },
                    child: const Text(
                      'Sign in',
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
