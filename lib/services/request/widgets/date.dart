import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';

class Date extends StatefulWidget {
  DateTime? date;
  final String? text;
  final BuildContext context;

  Date({this.date, this.text, required this.context});

  @override
  _DateState createState() => _DateState();
}

class _DateState extends State<Date> {
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
            await showDatePicker(
              context: widget.context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2001, 1, 1),
              lastDate: DateTime(2025, 12, 30),
            ).then((value) {
              if (value != null) {
                setState(() {
                  widget.date = value;
                  print(widget.date);
                });
              }
            });
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
                widget.text!,
                style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
              )),
        ),
      ],
    );
  }
}
