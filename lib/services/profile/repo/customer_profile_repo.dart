import 'package:thermo_ieee_app/main_models/customer.dart';
import 'package:thermo_ieee_app/source/firebase/firestore_helper.dart';

import '../../../source/firebase/firebase_url_model.dart';

abstract class CustomerProfileRepo{
  static Future<Customer> getProfile(String id) async => await FirestoreHelper.instance.get(FirebaseUrl("Customers",documentId: id), Customer()) as Customer;
}