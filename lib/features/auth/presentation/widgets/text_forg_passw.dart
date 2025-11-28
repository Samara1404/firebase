import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_kg/core/theme/app_colors.dart';

Widget textForgPassword(BuildContext context) {
  return Align(
    alignment: Alignment.centerRight,
    child: GestureDetector(
      onTap: () => context.go('/forgot'),
      child: Text(
        'Forgot Password?',
        style: TextStyle(color: AppColors.blue),
      ),
    ),
  );
}