import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_kg/core/theme/app_colors.dart';
import 'package:tap_kg/core/theme/app_typography.dart';
import 'package:tap_kg/features/auth/presentation/widgets/apple_button.dart';
import 'package:tap_kg/features/auth/presentation/widgets/custom_button.dart';
import 'package:tap_kg/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:tap_kg/features/auth/presentation/widgets/google_button.dart';
import 'package:tap_kg/features/auth/presentation/widgets/text_account.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
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
                      'Create an \naccount',
                      style: AppTypography.headline1
                    ),
                  ),

                  const SizedBox(height: 30),

                  CustomTextfield(
                    label: 'user name',
                    hint: 'email',
                    controller: TextEditingController(),
                    prefixIcon: Icons.email,
                  ),

                  const SizedBox(height: 10),

                  CustomTextfield(
                    label: 'password',
                    hint: '**********',
                    controller: TextEditingController(),
                    prefixIcon: Icons.lock,
                    isPassword: true,
                  ),

                  const SizedBox(height: 10),

                  CustomTextfield(
                    label: 'confirm password',
                    hint: '**********',
                    controller: TextEditingController(),
                    prefixIcon: Icons.lock,
                    isPassword: true,
                  ),

                  const SizedBox(height: 30),

                  CustomButton(
                    text: 'Create Account',
                    backgroundColor: AppColors.blue,
                    foregroundColor: AppColors.white,
                    onPressed: () {
                      context.go('/home');
                    },
                  ),

                  const SizedBox(height: 30),

                  Center(child: Text('- OR Continue with -')),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GoogleButton(),
                      const SizedBox(width: 20),
                      AppleButton(),
                    ],
                  ),

                  const SizedBox(height: 20),

                  TextAccount(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}