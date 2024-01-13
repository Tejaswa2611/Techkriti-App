// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:techkriti/TOSC/constants/utils.dart';

// // final _messangerKey = GlobalKey<ScaffoldMessengerState>();

// void httpErrorHandle({
//   required http.Response response,
//   required BuildContext context,
//   required VoidCallback onSucess,
// }) {
//   switch (response.statusCode) {
//     case 200:
//       onSucess();
//       break;
//     case 400:
//       // ScaffoldMessenger.of(context)
//       //     .showSnackBar(SnackBar(content: jsonDecode(response.body)['msg']));
//       // debugPrint("chal na");
//       // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: jsonDecode(response.body)['msg'] ,duration: const Duration(milliseconds: 100000),));

//       //  _messangerKey.currentState?.showSnackBar(
//       //   SnackBar(
//       //     content: jsonDecode(response.body)['msg'],
//       //   ),
//       // );

//       showSnackBar(context, jsonDecode(response.body)['msg']);
//       break;
//     case 500:
//       // ScaffoldMessenger.of(context)
//       //     .showSnackBar(SnackBar(content: jsonDecode(response.body)['error']));

//       // debugPrint("chal na");
//       // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: jsonDecode(response.body)['error'] ,duration: const Duration(milliseconds: 100000),));

//       // _messangerKey.currentState?.showSnackBar(
//       //   SnackBar(
//       //     content: jsonDecode(response.body)['error'],
//       //   ),
//       // );
//       showSnackBar(context, jsonDecode(response.body)['error']);
//       break;
//     default:
//       // debugPrint("chal na");
//       // ScaffoldMessenger.of(context)
//       //     .showSnackBar(SnackBar(content: Text(response.body)));

//       // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(response.body),duration: const Duration(milliseconds: 100000),));

//       //  _messangerKey.currentState?.showSnackBar(
//       //   SnackBar(
//       //     content: Text(response.body),
//       //   ),
//       // );

//       showSnackBar(context, response.body);
//   }
// }
