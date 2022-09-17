import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuther {
  static FirebaseAuther instance = FirebaseAuther();
  FirebaseAuth auther = FirebaseAuth.instance;
  Future<String> signUpWithEmail({password, email}) async {
    UserCredential response = await auther.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return response.user!.uid;
  }

  Future<String> signInWithEmail({password, email}) async {
      UserCredential response = await auther.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return response.user!.uid;
  }
}
