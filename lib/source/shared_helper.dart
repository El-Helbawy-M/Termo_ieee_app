import 'package:shared_preferences/shared_preferences.dart';

import '../services/authentication/bloc/authentication_bloc.dart';

class SharedHelper {
  static late SharedHelper instance;
  late SharedPreferences pref;
  SharedHelper();
  SharedHelper.init(){
    inithilize();
    instance = SharedHelper();
  }
  Future<void> inithilize()async=> pref = await SharedPreferences.getInstance();
  
  Future<bool> setToken(String id,String lang,UserType type) async {
    pref.setString("lang", lang);
    pref.setString("type", type == UserType.customer?"customer":"worker");
    return pref.setString("id", id);
  }

  getToken() {
    return pref.getString("id");
  } 

  getType()=>pref.getString("type") == "customer"?UserType.customer:UserType.worker;
  currentLang() => pref.getString("lang");

  bool get isTokenSaved => pref.getString("id") != null;
}