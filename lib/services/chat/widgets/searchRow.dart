import 'package:flutter/material.dart';

import 'default_form_field.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.height,
    required this.width,
    required this.searchController,
  }) : super(key: key);

  final double height;
  final double width;
  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.06,
      child: DefaultFormField(
        controller: searchController,
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