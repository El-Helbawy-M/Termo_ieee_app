import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseAuther {
  FirebaseAuth auther = FirebaseAuth.instance;
  String? email, password;

  /// ## Register Method
  ///

  // register()
  void signInWithEmail()async {
    try {
      await auther.signInWithEmailAndPassword(email: email!, password: password!);
    } catch (e) {
      SnackBar(content: Text('Error Login'));
      print(e);
    }
  }
}
