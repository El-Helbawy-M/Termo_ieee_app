import '../services/authentication/bloc/authentication_bloc.dart';

mixin Validations{
  String? phoneValidation(String? value){
    if(value == null) return "please fill the email field";
    else if(value.isEmpty) return "please fill the email field";
    else if(value.length == 11 || value.length == 13) return null;
    else return "please write the phone number correctly";
  }

  String? generalValidation(String? value){
    if(value == null) return "please fill the email field";
    else if(value.isEmpty) return "please fill the email field";
    else return null;
  }

  String? emailValidation(String? value){
    if(value == null) return "please fill the email field";
    else if(value.isEmpty) return "please fill the email field";
    else if(!value.contains("@")) return "please write the email in the right format";
    else if(!value.contains(".com")) return "please write the email in the right format";
    else return null;
  }

  String? passwordValidation(String? value){
    if(value == null) return "please fill the email field";
    else if(value.isEmpty) return "please fill the email field";
    else if(value.length < 6) return "the password should be larger then 6 charcters";
    else if(RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value))return "the password is week";
    else return null;
  }
  String? confirmPasswordValidation(String? value){
    if(value == null) return "please fill the email field";
    else if(value.isEmpty) return "please fill the email field";
    else if(value != AuthenticationBloc.instance.password) return "the confirmation password dosn't match the password";
    else return null;
  }
}