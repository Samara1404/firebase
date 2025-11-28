import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_kg/core/theme/app_colors.dart';
import 'package:tap_kg/core/theme/app_typography.dart';
import 'package:tap_kg/features/auth/presentation/widgets/custom_button.dart';
import 'package:tap_kg/features/auth/presentation/widgets/custom_text_field.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Forgot\nPassword',
                      style: AppTypography.headline1,
                    ),
                  ),
                  SizedBox(height: 200),
                  CustomTextfield(
                    label: 'email',
                    hint: 'enter your email',
                    controller: TextEditingController(),
                    prefixIcon: Icons.mail,
                  ),
                  SizedBox(height: 20),
                  CustomButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: Duration(seconds: 1),
                          content: Text(
                            '* We will send you a message to set or reset your new password',
                          ),
                        ),
                      );

                      Future.delayed(Duration(seconds: 1), () {
                        context.go('/login');
                      });
                    },
                    text: 'Submit',
                    backgroundColor: AppColors.blue,
                    foregroundColor: AppColors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
