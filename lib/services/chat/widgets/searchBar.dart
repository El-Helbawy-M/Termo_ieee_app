import 'package:flutter/material.dart';

import 'default_form_field.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: DefaultFormField(
        type: TextInputType.text,
        validate: (value) {
          if (value.isEmpty) {
            return 'Search is Empty';
          }
          return null;
        },
        hint: 'Search her',
        suffix: Icons.search,
      ),
    );
  }
}