import 'package:flutter/material.dart';
import 'package:tap_kg/core/theme/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final List<Widget>? leading;
  final List<Widget>? actions;
  final bool centerTitle;
  final double height;

  const CustomAppBar({
    super.key,
    required this.title,
    this.backgroundColor = AppColors.white,
    this.leading,
    this.actions,
    this.centerTitle = true,
    this.height = kToolbarHeight,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: backgroundColor,
      centerTitle: centerTitle,
      actions: actions,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}