import 'package:flutter/material.dart';

import '../../../../helpers/constraints.dart';
import 'category_item.dart';

class CategoriesPanel extends StatefulWidget {
  const CategoriesPanel({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoriesPanel> createState() => _CategoriesPanelState();
}

class _CategoriesPanelState extends State<CategoriesPanel> {
  //variables
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQueryHelper.width,
      height: 55,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        children: List.generate(
          5,
          (index) => CategoryItem(
            categoryName: "j$index",
            isSelected: selectedIndex == index,
            onTap: (value) => setState(() => selectedIndex = index),
          ),
        ),
      ),
    );
  }
}
