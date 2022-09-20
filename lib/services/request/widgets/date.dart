import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';

class Date extends StatefulWidget {
  final String? text;
  final BuildContext context;

  Date({this.text, required this.context});

  @override
  _DateState createState() => _DateState();
}

class _DateState extends State<Date> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Date',
          style: TextStyle(fontSize: 17),
        ),
        InkWell(
          onTap: () async {
            final DateTime? picked = await showDatePicker(
                context: context,
                initialDate: selectedDate,
                firstDate: DateTime(2015, 8),
                lastDate: DateTime(2101));
            if (picked != null && picked != selectedDate) {
              setState(() {
                selectedDate = picked;
              });
            }
          },
          child: Container(
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width,
              height: 60,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.hintFieldColor,
              ),
              child: Text(
                "${selectedDate.toLocal()}".split(' ')[0],
                style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
              )),
        ),
      ],
    );
  }
}
