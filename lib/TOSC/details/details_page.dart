// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// // import 'package:shared_preferences/shared_preferences.dart';
// // // import 'package:techkriti/Widgets/button.dart';
// // import 'package:techkriti/providers/user_provider.dart';
// // import 'package:techkriti/models/user.dart';
// // import 'package:techkriti/Services/auth_services.dart';
// // import '../Widgets/button.dart';
// // import '../constants/utils.dart';
// // // import '../constants/utils.dart';
// // // import 'package:techkriti/constants/utils.dart';

// // class UserDetailsPage extends StatefulWidget {
// //   const UserDetailsPage({Key? key}) : super(key: key);

// //   @override
// //   _UserDetailsPageState createState() => _UserDetailsPageState();
// // }

// // class _UserDetailsPageState extends State<UserDetailsPage> {
// //   bool _editMode = false;
// //   final AuthService authService = AuthService();
// //   late User user;
// //   TextEditingController nameController = TextEditingController();
// //   TextEditingController emailController = TextEditingController();
// //   TextEditingController parentNameController = TextEditingController();
// //   TextEditingController schoolNameController = TextEditingController();
// //   TextEditingController schoolAdressController = TextEditingController();
// //   TextEditingController phoneController = TextEditingController();
// //   TextEditingController gradeController = TextEditingController();
// //   TextEditingController poolController = TextEditingController();
// //   TextEditingController genderController = TextEditingController();
// //   TextEditingController dobController = TextEditingController();

// //   @override
// //   void initState() {
// //     super.initState();
// //     // Fetch user data from the provider
// //     UserProvider userProvider =
// //         Provider.of<UserProvider>(context, listen: false);
// //     user = userProvider.user;
// //     // Set initial values to the form fields
// //     nameController.text = user.name;
// //     emailController.text = user.email;
// //     parentNameController.text = user.parentName;
// //     schoolNameController.text = user.schoolName;
// //     schoolAdressController.text = user.schoolAddress;
// //     phoneController.text = user.phone;
// //     gradeController.text = user.grade;
// //     poolController.text = user.pool;
// //     genderController.text = user.gender;
// //     dobController.text = user.dob != null ? user.dob!.toIso8601String() : '';
// //   }

// //   void _saveDetails() async
// // {
// //     // Validate the form fields, if needed
// //     // ...

// //     // Fetch the token from SharedPreferences
// //     SharedPreferences prefs = await SharedPreferences.getInstance();
// //     String? authToken = prefs.getString('x-auth-token');

// //     if (authToken != null) {
// //       try {
// //         // Update the user object with the new data
// //         user.name = nameController.text;
// //         user.parentName = parentNameController.text;
// //         user.schoolName = schoolNameController.text;
// //         user.phone = phoneController.text;
// //         user.grade = gradeController.text;
// //         user.pool = poolController.text;
// //         user.gender = genderController.text;
// //         user.dob = dobController.text.isNotEmpty
// //             ? DateTime.parse(dobController.text)
// //             : null;
// //         // Update other fields accordingly

// //         // Save the updated user details on the server using the AuthService
// //         await authService.updateUserDetails(user, authToken);

// //         setState(
// //           () {
// //             _editMode = false;
// //           },
// //         );

// //         // ignore: use_build_context_synchronously
// //         showSnackBar(context, 'User details updated successfully.');
// //       } catch (e) {
// //         // ignore: use_build_context_synchronously
// //         showSnackBar(
// //             context, 'Failed to update user details. Please try again later.');
// //       }
// //     } else {
// //       // Handle the case where the token is not available
// //       // ...
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     final AuthService authService = AuthService();

// //     void logout() {
// //       authService.logout(context);
// //     }

// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('User Details'),
// //         actions: [
// //           if (_editMode)
// //             IconButton(
// //               icon: const Icon(Icons.save),
// //               onPressed: _saveDetails,
// //             ),
// //           IconButton(
// //             icon: Icon(_editMode ? Icons.cancel : Icons.edit),
// //             onPressed: () {
// //               setState(() {
// //                 _editMode = !_editMode;
// //               });
// //             },
// //           ),
// //         ],
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16),
// //         child: SingleChildScrollView(
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               TextFormField(
// //                 controller: nameController,
// //                 enabled: _editMode,
// //                 decoration: const InputDecoration(
// //                   labelText: 'Name',
// //                 ),
// //               ),
// //               TextFormField(
// //                 controller: parentNameController,
// //                 enabled: _editMode,
// //                 decoration: const InputDecoration(
// //                   labelText: 'Parent Name',
// //                 ),
// //               ),
// //               TextFormField(
// //                 controller: schoolNameController,
// //                 enabled: _editMode,
// //                 decoration: const InputDecoration(
// //                   labelText: 'School Name',
// //                 ),
// //               ),
// //               TextFormField(
// //                 controller: schoolAdressController,
// //                 enabled: _editMode,
// //                 decoration: const InputDecoration(
// //                   labelText: 'School Address',
// //                 ),
// //               ),
// //               TextFormField(
// //                 controller: phoneController,
// //                 enabled: _editMode,
// //                 decoration: const InputDecoration(
// //                   labelText: 'Phone',
// //                 ),
// //               ),
// //               TextFormField(
// //                 controller: gradeController,
// //                 enabled: _editMode,
// //                 decoration: const InputDecoration(
// //                   labelText: 'Grade',
// //                 ),
// //               ),
// //               TextFormField(
// //                 controller: poolController,
// //                 enabled: _editMode,
// //                 decoration: const InputDecoration(
// //                   labelText: 'Pool',
// //                 ),
// //               ),
// //               TextFormField(
// //                 controller: genderController,
// //                 enabled: _editMode,
// //                 decoration: const InputDecoration(
// //                   labelText: 'Gender',
// //                 ),
// //               ),
// //               TextFormField(
// //                 controller: dobController,
// //                 enabled: _editMode,
// //                 decoration: const InputDecoration(
// //                   labelText: 'Date of Birth',
// //                 ),
// //               ),
// //               TextFormField(
// //                 controller: dobController,
// //                 enabled: _editMode,
// //                 decoration: InputDecoration(
// //                   labelText: 'Date of Birth',
// //                   suffixIcon: IconButton(
// //                     icon: const Icon(Icons.calendar_today),
// //                     onPressed: _editMode
// //                         ? () async {
// //                             DateTime? selectedDate = await showDatePicker(
// //                               context: context,
// //                               initialDate: user.dob ?? DateTime.now(),
// //                               firstDate: DateTime(1900),
// //                               lastDate: DateTime.now(),
// //                             );

// //                             if (selectedDate != null &&
// //                                 selectedDate != user.dob) {
// //                               setState(() {
// //                                 dobController.text =
// //                                     selectedDate.toIso8601String();
// //                               });
// //                             }
// //                           }
// //                         : null,
// //                   ),
// //                 ),
// //               ),
// //               TextFormField(
// //                 controller: dobController,
// //                 enabled: _editMode,
// //                 decoration: InputDecoration(
// //                   labelText: 'Date of Birth',
// //                   suffixIcon: _editMode
// //                       ? IconButton(
// //                           icon: const Icon(Icons.calendar_today),
// //                           onPressed: () async {
// //                             DateTime? selectedDate = await showDatePicker(
// //                               context: context,
// //                               initialDate: user.dob ?? DateTime.now(),
// //                               firstDate: DateTime(1900),
// //                               lastDate: DateTime.now(),
// //                             );

// // ignore_for_file: use_build_context_synchronously

// //                             if (selectedDate != null &&
// //                                 selectedDate != user.dob) {
// //                               setState(() {
// //                                 dobController.text =
// //                                     selectedDate.toIso8601String();
// //                               });
// //                             }
// //                           },
// //                         )
// //                       : null,
// //                 ),
// //               ),
// //               const SizedBox(
// //                 height: 30,
// //               ),
// //               Button(text: 'Log Out', onTap: logout)
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:techkriti/TOSC/hiddendrawers/hidden_dr_homescreen.dart';
// import 'package:techkriti/TOSC/providers/user_provider.dart';
// import 'package:techkriti/TOSC/models/user.dart';
// import 'package:techkriti/TOSC/Services/auth_services.dart';
// import '../Widgets/button.dart';
// import '../constants/colors_and_fonts.dart';
// import '../constants/utils.dart';

// class UserDetailsPage extends StatefulWidget {
//   static const String routeName = '/details-page';
//   // static const String routeName  = '/conduction';
//   const UserDetailsPage({Key? key}) : super(key: key);

//   @override
//   _UserDetailsPageState createState() => _UserDetailsPageState();
// }

// class _UserDetailsPageState extends State<UserDetailsPage> {
//   bool _editMode = false;
//   final AuthService authService = AuthService();
//   late User user;
//   TextEditingController nameController = TextEditingController();
//   TextEditingController parentNameController = TextEditingController();
//   TextEditingController schoolNameController = TextEditingController();
//   TextEditingController schoolAdressController = TextEditingController();
//   TextEditingController schoolCityController = TextEditingController();
//   TextEditingController phoneController = TextEditingController();
//   TextEditingController gradeController = TextEditingController();
//   TextEditingController poolController = TextEditingController();
//   TextEditingController genderController = TextEditingController();
//   TextEditingController dobController = TextEditingController();

//   // String formatDate(DateTime date) {
//   //   return '${date.day.toString().padLeft(2, '0')}-${date.month.toString().padLeft(2, '0')}-${date.year.toString()}';
//   // }

//   @override
//   void initState() {
//     super.initState();
//     UserProvider userProvider =
//         Provider.of<UserProvider>(context, listen: false);
//     user = userProvider.user;

//     nameController.text = user.name;
//     parentNameController.text = user.parentName;
//     schoolNameController.text = user.schoolName;
//     schoolAdressController.text = user.schoolAddress;
//     phoneController.text = user.phone;
//     gradeController.text = user.grade;
//     poolController.text = user.pool;
//     genderController.text = user.gender;
//     dobController.text = user.dob != null ? user.dob!.toIso8601String() : '';
//     // dobController.text = user.dob != null ? formatDate(user.dob!) : '';
//   }

//   void _saveDetails() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? authToken = prefs.getString('x-auth-token');

//     if (authToken != null) {
//       try {
//         user.name = nameController.text;
//         user.parentName = parentNameController.text;
//         user.schoolName = schoolNameController.text;
//         user.schoolAddress = schoolAdressController.text;
//         user.schoolCity = schoolCityController.text;
//         user.phone = phoneController.text;
//         user.grade = gradeController.text;
//         user.pool = poolController.text;
//         user.gender = genderController.text;
//         user.dob = dobController.text.isNotEmpty
//             ? DateTime.parse(dobController.text)
//             : null;

//         await authService.updateUserDetails(user, authToken);

//         setState(() {
//           _editMode = false;
//         });

//         showSnackBar(context, 'User details updated successfully.');
//       } catch (e) {
//         showSnackBar(
//             context, 'Failed to update user details. Please try again later.');
//       }
//     } else {
//       // Handle the case where the token is not available
//     }
//   }

//   void logout() {
//     authService.logout(context);
//   }

//   void navigateToHomescreen() {
//     Navigator.pushNamed(context, HiddenDrawerHomeScreen.routeName);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'User Details',
//           style: TextStyle(
//             fontSize: 20,
//             fontFamily: 'heading',
//           ),
//         ),
//         actions: [
//           if (_editMode)
//             IconButton(
//               icon: const Icon(Icons.save),
//               onPressed: _saveDetails,
//             ),
//           IconButton(
//             icon: Icon(_editMode ? Icons.cancel : Icons.edit),
//             onPressed: () {
//               setState(
//                 () {
//                   _editMode = !_editMode;
//                 },
//               );
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(14.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Center(
//                 child: Text(
//                   "Update your details",
//                   style: TextStyle(
//                     fontFamily: 'heading',
//                     fontSize: 25,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               CustomTextField(
//                 controller: nameController,
//                 hintText: 'Name',
//                 enabled: _editMode,
//               ),
//               CustomTextField(
//                 controller: parentNameController,
//                 hintText: 'Parent Name',
//                 enabled: _editMode,
//               ),
//               CustomTextField(
//                 controller: schoolNameController,
//                 hintText: 'School Name',
//                 enabled: _editMode,
//               ),
//               CustomTextField(
//                 controller: schoolAdressController,
//                 hintText: 'School Address',
//                 enabled: _editMode,
//               ),
//               CustomTextField(
//                 controller: schoolCityController,
//                 hintText: 'School City',
//                 enabled: _editMode,
//               ),
//               CustomTextField(
//                 controller: phoneController,
//                 hintText: 'Phone',
//                 enabled: _editMode,
//               ),
//               CustomTextField(
//                 controller: gradeController,
//                 hintText: 'Grade',
//                 enabled: _editMode,
//               ),
//               CustomTextField(
//                 controller: poolController,
//                 hintText: 'Pool',
//                 enabled: _editMode,
//               ),
//               CustomTextField(
//                 controller: genderController,
//                 hintText: 'Gender',
//                 enabled: _editMode,
//               ),
//               CustomTextField(
//                 controller: dobController,
//                 hintText: 'Date of Birth',
//                 enabled: _editMode,
//                 suffixIcon: _editMode
//                     ? IconButton(
//                         icon: const Icon(Icons.calendar_today),
//                         onPressed: () async {
//                           DateTime? selectedDate = await showDatePicker(
//                             context: context,
//                             initialDate: user.dob ?? DateTime.now(),
//                             firstDate: DateTime(1900),
//                             lastDate: DateTime.now(),
//                           );

//                           if (selectedDate != null &&
//                               selectedDate != user.dob) {
//                             setState(() {
//                               dobController.text =
//                                   selectedDate.toIso8601String();
//                             });
//                           }
//                         },
//                       )
//                     : null,
//               ),
//               if (!_editMode)
//                 Button(
//                   text: "Edit your Details",
//                   onTap: () {
//                     setState(
//                       () {
//                         _editMode = true;
//                       },
//                     );
//                   },
//                 ),
//               if (_editMode)
//                 Button(
//                   text: "Save your details",
//                   onTap: () {
//                     _saveDetails();
//                     _editMode = false;
//                   },
//                 ),
// //  if (_editMode)
// //             IconButton(
// //               icon: const Icon(Icons.save),
// //               onPressed: _saveDetails,
// //             ),
// //           IconButton(
// //             icon: Icon(_editMode ? Icons.cancel : Icons.edit),
// //             onPressed: () {
// //               setState(
// //                 () {
// //                   _editMode = !_editMode;
// //                 },
// //               );
// //             },
// //           ),
// //         ],
// //       ),
//               const SizedBox(height: 15),
//               Button(text: 'Explore TOSC', onTap: navigateToHomescreen),
//               const SizedBox(height: 15),
//               ButtonRed(text: 'Log Out', onTap: logout),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CustomTextField extends StatelessWidget {
//   final TextEditingController controller;
//   final String hintText;
//   final bool enabled;
//   final Widget? suffixIcon;

//   const CustomTextField({
//     super.key,
//     required this.controller,
//     required this.hintText,
//     this.enabled = true,
//     this.suffixIcon,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10.0),
//       child: TextFormField(
//         controller: controller,
//         enabled: enabled,
//         style: const TextStyle(
//           // fontFamily: textFont,
//           color: Colors.black,
//         ),
//         decoration: InputDecoration(
//           enabledBorder: const OutlineInputBorder(
//             borderSide: BorderSide(color: Colors.white),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: Colors.grey.shade400),
//           ),
//           fillColor: Colors.grey.shade200,
//           filled: true,
//           hintText: hintText,
//           hintStyle: TextStyle(
//             color: Colors.grey[500],
//             fontFamily: headingFont,
//           ),
//           labelText: hintText,
//           suffixIcon: suffixIcon,
//         ),
//       ),
//     );
//   }
// }
