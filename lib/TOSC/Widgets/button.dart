// import 'package:flutter/material.dart';

// class Button extends StatelessWidget {
//   final String text;
//   final VoidCallback onTap;
//   final bool loading;

//   const Button({
//     Key? key,
//     required this.text,
//     required this.onTap,
//     this.loading = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed:
//           onTap, // Call the provided onTap function when the button is pressed
//       style: ElevatedButton.styleFrom(
//         foregroundColor: Colors.white,
//         backgroundColor: Colors.black87,
//         padding: const EdgeInsets.symmetric(
//           horizontal: 70.0,
//           vertical: 15.0,
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(30.0),
//         ),
//         elevation: 2.0,
//         shadowColor: Colors.grey.withOpacity(0.5),
//       ),
//       child: Center(
//         child: loading
//             ? const CircularProgressIndicator(
//                 strokeWidth: 3,
//                 color: Colors.white,
//               )
//             : Text(
//                 text,
//                 style: const TextStyle(
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                   letterSpacing: 1.5,
//                 ),
//               ),
//       ),
//     );
//   }
// }

// class ButtonRed extends StatelessWidget {
//   final String text;
//   final VoidCallback onTap;
//   final bool loading;

//   const ButtonRed({
//     Key? key,
//     required this.text,
//     required this.onTap,
//     this.loading = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed:
//           onTap, // Call the provided onTap function when the button is pressed
//       style: ElevatedButton.styleFrom(
//         foregroundColor: Colors.white,
//         backgroundColor: Colors.red.shade900,
//         padding: const EdgeInsets.symmetric(
//           horizontal: 70.0,
//           vertical: 15.0,
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(30.0),
//         ),
//         elevation: 5.0,
//         shadowColor: Colors.grey.withOpacity(0.5),
//       ),
//       child: Center(
//         child: loading
//             ? const CircularProgressIndicator(
//                 strokeWidth: 3,
//                 color: Colors.white,
//               )
//             : Text(
//                 text,
//                 style: const TextStyle(
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                   letterSpacing: 1.5,
//                 ),
//               ),
//       ),
//     );
//   }
// }

// class ButtonSmall extends StatelessWidget {
//   final String text;
//   final VoidCallback onTap;
//   final bool loading;

//   const ButtonSmall({
//     Key? key,
//     required this.text,
//     required this.onTap,
//     this.loading = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed:
//           onTap, // Call the provided onTap function when the button is pressed
//       style: ElevatedButton.styleFrom(
//         foregroundColor: Colors.white,
//         backgroundColor: Colors.black87,
//         padding: const EdgeInsets.symmetric(
//           horizontal: 20.0,
//           vertical: 15.0,
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(30.0),
//         ),
//         elevation: 5.0,
//         shadowColor: Colors.grey.withOpacity(0.5),
//       ),
//       child: Center(
//         child: loading
//             ? const CircularProgressIndicator(
//                 strokeWidth: 3,
//                 color: Colors.white,
//               )
//             : Text(
//                 text,
//                 style: const TextStyle(
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                   letterSpacing: 1.5,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//       ),
//     );
//   }
// }