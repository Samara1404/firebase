import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_kg/core/theme/app_colors.dart';
import 'package:tap_kg/core/theme/app_typography.dart';

class TextAccount extends StatelessWidget {
  const TextAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (ctx) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('I Already Have an Account', style: AppTypography.label1),
          SizedBox(width: 5),
          GestureDetector(
            onTap: () => context.go('/login'),   
            child: Text(
              'Login',
              style: TextStyle(
                color: AppColors.blue,
                decoration:  TextDecoration.underline,
                decorationColor: AppColors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}