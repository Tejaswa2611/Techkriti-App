// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class MyDataScreen extends StatefulWidget {
//   const MyDataScreen({super.key});

//   @override
//   _MyDataScreenState createState() => _MyDataScreenState();
// }

// class _MyDataScreenState extends State<MyDataScreen> {
//   String? details;

//   @override
//   void initState() {
//     super.initState();
//     fetchConduction();
//   }

//   Future<void> fetchConduction() async {
//     try {
//       var snapshot = await FirebaseFirestore.instance.collection('Techkriti').doc('1').get();
//       var data = snapshot.data();
//       if (data != null) {
//         setState(() {
//           details = data['Conduction'];
//         });
//       }
//     } catch (error) {
//       debugPrint('Error fetching data: $error');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Firestore Data')),
//       body: Center(
//         child: details != null
//             ? Text(
//                 'Conduction: $details',
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//               )
//             : const CircularProgressIndicator(),
//       ),
//     );
//   }
// }
