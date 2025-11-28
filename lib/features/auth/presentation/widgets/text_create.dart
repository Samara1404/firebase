import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_kg/core/theme/app_colors.dart';
import 'package:tap_kg/core/theme/app_typography.dart';

Row textCreate(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('Create An Account',style: AppTypography.label1),
      SizedBox(width: 5),
      GestureDetector(
        onTap: () => context.go('/registration'),
        child: Text(
          'Sign Up',
          style: TextStyle(
            color: AppColors.blue,
            decoration: TextDecoration.underline,
            decorationColor: AppColors.blue,
          ),
        ),
      ),
    ],
  );
}