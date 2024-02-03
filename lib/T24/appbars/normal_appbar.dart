import 'package:flutter/material.dart';
class NormalAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const NormalAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
      fontFamily: 'heading',
      fontSize: 22,
      fontWeight: FontWeight.normal,
      color: Colors.white)
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
    );
  }
}

// import 'package:flutter/material.dart';

// class NormalAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final String title;

//   const NormalAppBar({Key? key, required this.title}) : super(key: key);

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: Text(
//         title,
//         style: TextStyle(
//           fontFamily: 'heading',
//           fontSize: 22,
//           fontWeight: FontWeight.normal,
//           color: Colors.white,
//         ),
//       ),
//       backgroundColor: const Color.fromARGB(255, 0, 0, 0),
//     );
//   }
// }
