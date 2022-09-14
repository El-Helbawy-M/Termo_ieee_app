import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:thermo_ieee_app/source/puplic_model.dart';

import 'firebase_url_model.dart';

class FirestoreHelper {
  static FirestoreHelper instance = FirestoreHelper();
  FirebaseFirestore database = FirebaseFirestore.instance;

  Future<dynamic> get(FirebaseUrl url, Mapper model) async {
    if (url.documentId != null) {
      var response = await database.collection(url.collection).doc(url.documentId).get();
      if(response.exists){
        Map<String,dynamic> data = response.data()!;
        return Mapper(model, data);
      }
      else {
        return model;
      }
    } else {
      var response = await database.collection(url.collection).get();
      if(response.docs.isNotEmpty){
        List<Map<String,dynamic>> data = response.docs.map((e) => e.data()).toList();
        return Mapper(model, data);
      }
      else {
        return model;
      }
    }
  }
}
