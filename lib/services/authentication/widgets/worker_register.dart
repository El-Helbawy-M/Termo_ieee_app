import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/authentication/widgets/text_form_auth.dart';
import 'package:thermo_ieee_app/services/filter/widgets/filter_dropdown.dart';

import '../../../source/firebase/auth_helper.dart';

class WorkerRegister extends StatefulWidget {
  const WorkerRegister({super.key});

  @override
  State<WorkerRegister> createState() => _WorkerRegisterState();
}

class _WorkerRegisterState extends State<WorkerRegister> {
  String? selectedLetter;
  

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          
          
        ],
      ),
    );
  }
}
