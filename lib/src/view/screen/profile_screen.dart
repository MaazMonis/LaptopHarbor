import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key});



  // Future<void> _changeProfilePicture(BuildContext context) async {
  //   try {
  //     final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
  //     if (pickedFile != null) {
  //       final currentUser = FirebaseAuth.instance.currentUser;
  //       if (currentUser != null) {
  //         final file = Blob(pickedFile.path);
  //         final storageRef = FirebaseStorage.instance.ref().child('profile_pictures/${currentUser.uid}');
  //         final uploadTask = storageRef.putFile(file);
  //
  //         await uploadTask.whenComplete(() async {
  //           final url = await storageRef.getDownloadURL();
  //           await FirebaseFirestore.instance.collection('users').doc(currentUser.uid).update({
  //             'profile_picture': url,
  //           });
  //
  //           ScaffoldMessenger.of(context).showSnackBar(
  //             SnackBar(content: Text('Profile picture updated successfully')),
  //           );
  //         });
  //       }
  //     } else {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(content: Text('No image selected')),
  //       );
  //     }
  //   } catch (error) {
  //     print('Error changing profile picture: $error');
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text('Failed to change profile picture')),
  //     );
  //   }
  // }

  Future<void> _showChangeContactInfoDialog(BuildContext context) async {
    String newEmail = '';
    String newPhone = '';

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Change Contact Information'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                onChanged: (value) {
                  newEmail = value;
                },
                decoration: InputDecoration(
                  labelText: 'New Email',
                ),
              ),
              TextField(
                onChanged: (value) {
                  newPhone = value;
                },
                decoration: InputDecoration(
                  labelText: 'New Phone',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                _changeContactInfo(context, newEmail, newPhone);
                Navigator.pop(context);
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }


  Future<void> _changeContactInfo(BuildContext context, String newEmail, String newPhone) async {
    final currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser != null) {
      try {
        // Update contact information in Firestore
        await FirebaseFirestore.instance.collection('users').doc(currentUser.uid).update({
          'email': newEmail,
          'phone': newPhone,
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Contact information updated successfully')),
        );
      } catch (error) {
        print('Failed to update contact information: $error');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to update contact information')),
        );
      }
    }
  }

  Future<void> _changePassword(BuildContext context) async {
    // Use Firebase Authentication to allow user to change password
    try {
      final user = FirebaseAuth.instance.currentUser;
      await FirebaseAuth.instance.sendPasswordResetEmail(email: user!.email!);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Password reset email sent')),
      );
    } catch (error) {
      print('Failed to send password reset email: $error');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to send password reset email')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _showChangeContactInfoDialog(context),
              child: Text('Change Contact Information'),
            ),
            ElevatedButton(
              onPressed: () => _changePassword(context),
              child: Text('Change Password'),
            ),
          ],
        ),
      ),
    );
  }
}