import 'package:flutter/material.dart';

import '../../../helpers/colors.dart';

class FilterDropdown extends StatefulWidget {
  final List? items;
  String? selectedLetter;
  final String? text;
  final InputBorder? border;

  FilterDropdown({this.items, this.selectedLetter, this.text, this.border});

  @override
  _FilterDropdownState createState() => _FilterDropdownState();
}

class _FilterDropdownState extends State<FilterDropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
        icon: Icon(Icons.keyboard_arrow_down),
        decoration:
        InputDecoration(
          filled: true,
          fillColor: AppColors.hintFieldColor,
          hintText: widget.text,
          border:widget.border/* OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.mainColor)),*/,focusedBorder: widget.border
        ),
        items: widget.items!
            .map(
              (item) =>
                  DropdownMenuItem<String>(value: item, child: Text(item)),
            )
            .toList(),
        onChanged: (val) {
          setState(() {
            widget.selectedLetter = val!;
          });
        });
  }
}
