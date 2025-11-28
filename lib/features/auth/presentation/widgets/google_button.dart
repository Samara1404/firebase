import 'package:flutter/material.dart';
import 'package:tap_kg/core/theme/app_colors.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        side: const BorderSide(color: AppColors.blue),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: () {},
      child: Image.asset(
        'assets/icons/png/google.png',
        height: 24,
      ),
    );
  }
}