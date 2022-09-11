import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/authentication/widgets/text_form_auth.dart';
import 'package:thermo_ieee_app/services/filter/widgets/filter_dropdown.dart';

class WorkerRegister extends StatefulWidget {
  const WorkerRegister({Key? key}) : super(key: key);

  @override
  State<WorkerRegister> createState() => _WorkerRegisterState();
}

class _WorkerRegisterState extends State<WorkerRegister> {
  String? selectedLetter;
  List items = ['نجارة', 'سباكة', 'خياطة', 'كهرباء', 'تشطيب', 'ق', 'ش'];

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormAuth(
            title: 'الرقم القومي',
            input: TextInputType.number,
          ),
          SizedBox(
            height: 20,
          ),
          FilterDropdown(
            text: 'الخدمة',
            items: items
          ),
          SizedBox(
            height: 20,
          ),
          TextFormAuth(
            title: 'رقم الموبايل',
            input: TextInputType.phone,
          ),
          SizedBox(
            height: 20,
          ),
          TextFormAuth(
            title: 'العنوان',
            input: TextInputType.streetAddress,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
