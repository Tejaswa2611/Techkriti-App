import 'dart:convert';

// import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class User
{
  final String id;
  final String name;
  final String password; 
  final String email;
  final String token;

  User({
    required this.id,
    required this.name,
    required this.password,
    required this.email,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'password': password,
      'email': email,
      'token': token,
      
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['_ id'] ?? '',
      name: map['name'] ?? '',
      password: map['password'] ?? '',
      email: map['email'] ?? '',
      token: map['token'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);
}
