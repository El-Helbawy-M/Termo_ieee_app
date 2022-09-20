import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../services/main/pages/main_page.dart';

class FirebaseAuther {
  FirebaseAuth auther = FirebaseAuth.instance;
  String? email, password, name, address;
  int? nationalID, phoneNumber;

  /// ## Register Method
  ///

  // register()

  void signUpWithEmail({context, password, email}) async {
    try {
      await auther
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: ((context) => MainPage())));
        print('created acc');
      });
    } catch (e) {
      SnackBar(content: Text('Error Sign up'));
      print(e);
    }
  }
  void signInWithEmail({context, password, email}) async {
    try {
      await auther
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: ((context) => MainPage())));
        print('account is correct');
      });
    } catch (e) {
      SnackBar(content: Text('Error Sign in'));
      print(e);
    }
  }
}
