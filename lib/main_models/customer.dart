import 'package:thermo_ieee_app/main_models/user.dart';
import 'package:thermo_ieee_app/source/puplic_model.dart';

class Customer extends AppUser implements SingleMapper{

  late String? email;
  @override
  Mapper fromJson(Map<String, dynamic> json) {
    Customer customer = Customer();
    customer.name = json['name'];
    customer.government = json['government'];
    customer.address = json['address'];
    customer.city = json['city'];
    customer.id = json['id'];
    customer.phone = json['phone'] is String? int.parse(json['phone']):json['phone'];
    customer.email = json['email'];
    return customer;
  }
  
}