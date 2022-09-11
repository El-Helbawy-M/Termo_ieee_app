import 'package:flutter/material.dart';

import '../../../../helpers/colors.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.categoryName,
    required this.isSelected,
    this.onTap,
  }) : super(key: key);
  final String categoryName;
  final bool isSelected;
  final Function(String)? onTap;
  Color _checkColor(bool check) => check ? AppColors.mainColor : Colors.white;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) onTap!(categoryName);
      },
      child: Container(
        width: 110,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColors.mainColor),
          borderRadius: BorderRadius.circular(5),
          color: _checkColor(isSelected),
        ),
        margin: EdgeInsets.symmetric(horizontal: 4),
        child: Center(
          child: Text(
            "c1",
            style: TextStyle(
              color: _checkColor(!isSelected),
            ),
          ),
        ),
      ),
    );
  }
}
