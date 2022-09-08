import 'package:thermo_ieee_app/source/puplic_model.dart';

class FirestoreHelper{
  Mapper get(SingleMapper model){
    Map<String,dynamic> json = {};
    return model.fromJson(json);
  }
}