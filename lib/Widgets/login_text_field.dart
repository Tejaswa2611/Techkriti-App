// import 'package:flutter/material.dart';
// import '../constants/colors_and_fonts.dart';

// class MyTextField extends StatefulWidget {
//   final TextEditingController controller;
//   final String hintText;
//   final bool obscureText;

//   const MyTextField({
//     Key? key,
//     required this.controller,
//     required this.hintText,
//     required this.obscureText,
//   }) : super(key: key);

//   @override
//   _MyTextFieldState createState() => _MyTextFieldState();
// }

// class _MyTextFieldState extends State<MyTextField> {
//   final FocusNode _focusNode = FocusNode();
//   bool _isFocused = false;

//   @override
//   void initState() {
//     super.initState();
//     _focusNode.addListener(_onFocusChange);
//   }

//   void _onFocusChange() {
//     setState(() {
//       _isFocused = _focusNode.hasFocus;
//     });
//   }

//   @override
//   void dispose() {
//     _focusNode.removeListener(_onFocusChange);
//     _focusNode.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       controller: widget.controller,
//       obscureText: widget.obscureText,
//       focusNode: _focusNode,
//       decoration: InputDecoration(
//         labelText: widget.hintText,
//         labelStyle: TextStyle(
//           color: _isFocused ? Colors.grey.shade600 : Colors.grey.shade400,
//           fontFamily: headingFont,
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.grey.shade400),
//         ),
//         enabledBorder: const OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.white),
//         ),
//         fillColor: Colors.grey.shade200,
//         filled: true,
//         hintText: '',
//         hintStyle: TextStyle(
//           color: Colors.grey[500],
//           fontFamily: headingFont,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../constants/colors_and_fonts.dart';

class MyTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData icon; // New property for the icon
  final bool obscureText;

  const MyTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.icon,
    required this.obscureText,
  }) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.obscureText,
      focusNode: _focusNode,
      decoration: InputDecoration(
        prefixIcon: Icon(widget.icon), // Set the prefix icon here
        labelText: widget.hintText,
        labelStyle: TextStyle(
          color: _isFocused ? Colors.grey.shade600 : Colors.grey.shade400,
          fontFamily: headingFont,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        fillColor: Colors.grey.shade200,
        filled: true,
        hintText: '',
        hintStyle: TextStyle(
          color: Colors.grey[500],
          fontFamily: headingFont,
        ),
      ),
    );
  }
}
