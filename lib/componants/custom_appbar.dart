import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.actionIcon,
    required this.leadigIcon,
    this.content,
    this.onPressedAction,
    this.onPressedLeading,
  }) : super(key: key);
  final Widget leadigIcon, actionIcon;
  final Widget? content;
  final void Function()? onPressedLeading, onPressedAction;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          // the leading icon button
          leadigIcon,
          // the title
          Expanded(child: content ?? const SizedBox()),
          // the action icon button
          actionIcon
        ],
      ),
    );
  }
}
