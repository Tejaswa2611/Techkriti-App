// import 'dart:io';
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:techkriti/T24/appbars/normal_appbar.dart';

// class Brochure extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       //appBar: NormalAppBar(title: "Brochure"),
//       backgroundColor: Color(0xFF121212),
//     );
//   }

//   static Future<File> loadAsset(String path) async {
//     final data = await rootBundle.load(path);
//     final bytes = data.buffer.asUint8List();

//     return _store(path, bytes);
//   }

//   static Future<File> _store(String url, List<int> bytes) async {
//     final filename = basename(url);
//     final dir = await getApplicationDocumentsDirectory();
//     final file = File('${dir.path}/$filename');

//     await file.writeAsBytes(bytes, flush: true);
//     return file;
//   }
// }
