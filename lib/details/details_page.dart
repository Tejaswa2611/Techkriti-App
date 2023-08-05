import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techkriti/providers/user_provider.dart';
import 'package:techkriti/models/user.dart';
import 'package:techkriti/Services/auth_services.dart';
import 'package:techkriti/constants/utils.dart';

class UserDetailsPage extends StatefulWidget {
  const UserDetailsPage({Key? key}) : super(key: key);

  @override
  _UserDetailsPageState createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  bool _editMode = false;
  final AuthService authService = AuthService();
  late User user;
  TextEditingController nameController = TextEditingController();
  TextEditingController parentNameController = TextEditingController();
  TextEditingController schoolNameController = TextEditingController();
 

  @override
  void initState() {
    super.initState();
    // Fetch user data from the provider
    UserProvider userProvider = Provider.of<UserProvider>(context, listen: false);
    user = userProvider.user;
    // Set initial values to the form fields
    nameController.text = user.name;
    parentNameController.text = user.parentName;
    schoolNameController.text = user.schoolName;
    // Set other initial values to form fields if needed
    // ...
  }

  void _saveDetails() async {
    // Validate the form fields, if needed
    // ...

    // Fetch the token from SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? authToken = prefs.getString('x-auth-token');

    if (authToken != null) {
      try {
        // Update the user object with the new data
        user.name = nameController.text;
        user.parentName = parentNameController.text;
        user.schoolName = schoolNameController.text;
        // Update other fields accordingly

        // Save the updated user details on the server using the AuthService
        await authService.updateUserDetails(user, authToken);

        setState(() {
          _editMode = false;
        });

        showSnackBar(context, 'User details updated successfully.');
      } catch (e) {
        showSnackBar(context, 'Failed to update user details. Please try again later.');
      }
    } else {
      // Handle the case where the token is not available
      // ...
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
        actions: [
          if (_editMode)
            IconButton(
              icon: const Icon(Icons.save),
              onPressed: _saveDetails,
            ),
          IconButton(
            icon: Icon(_editMode ? Icons.cancel : Icons.edit),
            onPressed: () {
              setState(() {
                _editMode = !_editMode;
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: nameController,
              enabled: _editMode,
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
            ),
            TextFormField(
              controller: parentNameController,
              enabled: _editMode,
              decoration: const InputDecoration(
                labelText: 'Parent Name',
              ),
            ),
            TextFormField(
              controller: schoolNameController,
              enabled: _editMode,
              decoration: const InputDecoration(
                labelText: 'School Name',
              ),
            ),
            // Add other form fields for user details if needed
            // ...
          ],
        ),
      ),
    );
  }
}
