import 'package:thermo_ieee_app/main_models/user.dart';

import '../source/puplic_model.dart';

class Worker extends AppUser implements SingleMapper{

  late String? jobType;
  @override
  Mapper fromJson(Map<String, dynamic> json) {
    Worker worker = Worker();
    worker.name = json['name'];
    worker.government = json['government'];
    worker.address = json['address'];
    worker.city = json['city'];
    worker.id = json['id'];
    worker.phone = json['phone'];
    worker.jobType = json['job_type'];
    return worker;
  }
}