import 'dart:convert';

// import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
  
class User
{
  final String id;
   String name;
  final String password; 
  final String email;
  final String token;
  String parentName;
  String schoolName;
  String schoolAddress;
  String schoolCity; 
  String phone;
  String grade;
  String pool;
  String gender;
  DateTime? dob;

  User({
    
    required this.id,
    required this.name,
    required this.password,
    required this.email,
    required this.token,
    this.parentName = '',
    this.schoolName = '',
    this.schoolAddress = '',
    this.schoolCity = '',
    required this.phone,
    this.grade= '',
    this.pool = '',
    this.gender = '',
    this.dob,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'password': password,
      'email': email,
      'token': token,
      'parentName': parentName,
      'schoolName': schoolName,
      'schoolAddress': schoolAddress,
      'schoolCity': schoolCity,
      'phone': phone,
      'grade': grade,
      'pool':pool,
      'gender': gender,
      'dob': dob?.toIso8601String(),
      // 'dob': formatDate(dob!)
            
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['_id'] ?? '',
      name: map['name'] ?? '',
      password: map['password'] ?? '',
      email: map['email'] ?? '',
      parentName: map['parentName'] ?? '',
      schoolName: map['schoolName'] ?? '',
      schoolAddress: map['schoolAddress'] ?? '',
      schoolCity: map['schoolCity'] ?? '',
      phone: map['phone'] ?? '',
      grade: map['grade'] ?? '',
      token: map['token'] ?? '',
      pool: map['pool'] ?? '',
      gender: map['gender'] ?? '',
      dob: map['dob'] != null ? DateTime.tryParse(map['dob']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);
}
