import 'package:flutter/material.dart';
import '../models/user.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(
    id: '',
    name: '',
    password: '',
    email: '',
    token: '',
  );

  User get user =>_user;
  void setUser(String? user)
  {
    if (user != null) {
    _user = User.fromJson(user);
    notifyListeners();
  }
  }
}
