import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  final Widget widget;
  final double height;

  const CustomAppBar({
    super.key,
    required this.widget,
    this.height = kToolbarHeight,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  @override
  Widget get child => widget;

  @override
  Size get preferredSize => Size.fromHeight(height);
}
