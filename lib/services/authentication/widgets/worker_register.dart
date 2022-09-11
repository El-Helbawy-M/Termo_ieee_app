import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/authentication/widgets/text_form_auth.dart';
class WorkerRegister extends StatefulWidget {
  const WorkerRegister({Key? key}) : super(key: key);

  @override
  State<WorkerRegister> createState() => _WorkerRegisterState();
}

class _WorkerRegisterState extends State<WorkerRegister> {
  String selectedLetter='نجارة';
  List items = ['نجارة', 'سباكة', 'خياطة','كهرباء','تشطيب','ق','ش'];

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
          DropdownButtonFormField<String>(
            icon: Icon(Icons.keyboard_arrow_down),
              decoration: InputDecoration(labelText: 'الخدمة'),
              value: selectedLetter,
              items: items
                  .map(
                    (item) => DropdownMenuItem<String>(
                      value: item,
                        child: Text(item)),
                  )
                  .toList(),
              onChanged: ( val) {
                setState(() {
                  selectedLetter = val!;
                });
              }
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
