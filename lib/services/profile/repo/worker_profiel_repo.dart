import '../../../main_models/customer.dart';
import '../../../main_models/worker.dart';
import '../../../source/firebase/firebase_url_model.dart';
import '../../../source/firebase/firestore_helper.dart';

abstract class WorkerProfileRepo {
  static Future<Worker> getProfile(String id) async => await FirestoreHelper.instance.get(FirebaseUrl("Customers",documentId: id), Worker()) as Worker; 
}