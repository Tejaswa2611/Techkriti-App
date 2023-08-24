import 'package:flutter/material.dart';
import '../models/user.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(
    id: '',
    name: '',
    password: '',
    email: '',
    token: '',
    phone: '',
  );

    User get user =>_user;
     void setUser(String userData) {
    _user = User.fromJson(userData);
    notifyListeners();
  }
}
