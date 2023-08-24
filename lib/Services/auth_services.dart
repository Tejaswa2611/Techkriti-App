// ignore_for_file: use_build_context_synchronously
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techkriti/Screens/landing.dart';
import 'package:techkriti/Screens/login_page.dart';
import 'package:techkriti/constants/error_handling.dart';
import 'package:techkriti/constants/utils.dart';
import 'package:techkriti/details/details_page.dart';
import 'package:techkriti/models/user.dart';
import 'package:http/http.dart' as http;
import 'package:techkriti/providers/user_provider.dart';
import '../constants/global_variables.dart';

class AuthService {
  // SIGN UP USER

  void signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
    required String phone,
    required Function(bool) setLoading,
  }) async {
    try {
      setLoading(true);
      User user = User(
        id: '',
        name: name,
        email: email,
        password: password,
        phone: phone,
        token: '',
        // parentName:
      );

      http.Response res = await http.post(
        Uri.parse('$uri/api/signup'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      httpErrorHandle(
        response: res,
        context: context,
        onSucess: () {
          showSnackBar(
            context,
            'Account created! Login with the same credentials',
          );
          Navigator.popAndPushNamed(context, LoginPage.routeName);
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    } finally {
      setLoading(false);
    }
  }

  // SIGN IN USER
  void signInUser({
    required BuildContext context,
    required String email,
    required String password,
    required Function(bool) setLoading,
  }) async {
    try {
      setLoading(true);
      http.Response res = await http.post(
        Uri.parse('$uri/api/signin'),
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      debugPrint(res.body);
      httpErrorHandle(
        response: res,
        context: context,
        onSucess: () async {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          Provider.of<UserProvider>(context, listen: false).setUser(res.body);
          await prefs.setString('x-auth-token', jsonDecode(res.body)['token']);
          Navigator.pushNamed(context, UserDetailsPage.routeName);
        },
      );
    } catch (e) {
      debugPrint(e.toString());
      showSnackBar(context, e.toString());
    } finally {
      setLoading(false);
    }
  }

  // GET USER DATA
  void getUserData({
    required BuildContext context,
  }) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('x-auth-token');

      if (token == null) {
        prefs.setString('x-auth-token', '');
      }
      var tokenRes = await http.post(
        Uri.parse('$uri/tokenIsValid'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': token!,
        },
      );
      var response = jsonDecode(tokenRes.body);
      if (response == true) {
        http.Response userRes = await http.get(
          Uri.parse('$uri/'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'x-auth-token': token,
          },
        );

        if (userRes.body.isNotEmpty) {
          // Check if the response body is not empty
          var userProvider = Provider.of<UserProvider>(context, listen: false);
          userProvider.setUser(userRes.body);
        }
      }
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  // UPDATE USER DETAILS
  Future<http.Response> updateUserDetails(User user, String authToken) async {
    try {
      http.Response res = await http.post(
        Uri.parse('$uri/api/update-details'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': authToken,
        },
      );
      return res;
    } catch (e) {
      rethrow; // Rethrow the exception to handle it in the UserDetailsPage
    }
  }

  // LOG OUT
  void logout(BuildContext context) async {
    try {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      await sharedPreferences.setString('x-auth-token', '');
      Navigator.pushNamedAndRemoveUntil(
          context, LandingPage.routename, (route) => false);
      showSnackBar(context, "Successfully Logged out");
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  // FORGOT PASSWORD
  Future<bool> forgotPassword(String email) async {
    try {
      http.Response res = await http.post(
        Uri.parse('$uri/api/forgot-password'),
        body: jsonEncode({'email': email}),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      var response = jsonDecode(res.body);
      if (response.containsKey('success')) {
        return response['success'] as bool;
      } else {
        debugPrint('Response does not contain "success" key');
        return false;
      }
    } catch (e) {
      debugPrint('Error: $e');
      return false;
    }
  }

}
