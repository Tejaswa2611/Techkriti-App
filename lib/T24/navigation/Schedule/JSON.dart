import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class JSON extends StatefulWidget {
  const JSON({super.key});

  @override
  State<JSON> createState() => _JSONState();
}

class _JSONState extends State<JSON> {
  List<String> events = [];

  Future<List<String>> getData() async {
    final Uri url = Uri.parse("");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body);
      List<String> eventsList =
          jsonResponse.map((event) => event['name'].toString()).toList();
      return eventsList;
    } else {
      throw Exception("Failed to load data");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
