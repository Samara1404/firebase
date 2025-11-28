import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_kg/core/theme/app_colors.dart';
import 'package:tap_kg/core/theme/app_typography.dart';
import 'package:tap_kg/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:tap_kg/features/auth/presentation/bloc/auth_event.dart';
import 'package:tap_kg/features/auth/presentation/widgets/apple_button.dart';
import 'package:tap_kg/features/auth/presentation/widgets/custom_button.dart';
import 'package:tap_kg/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:tap_kg/features/auth/presentation/widgets/google_button.dart';
import 'package:tap_kg/features/auth/presentation/widgets/info_container.dart';
import 'package:tap_kg/features/auth/presentation/widgets/text_create.dart';
import 'package:tap_kg/features/auth/presentation/widgets/text_forg_passw.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: SafeArea(
        child: SingleChildScrollView(
         
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Салам!\nКош келдиниз',
                    style: AppTypography.headline3,
                  ),
                ),

                const SizedBox(height: 20),

                InfoContainer(
                  children: <Widget>[
                    CustomTextfield(
                      label: 'Email',
                      hint: 'testkg@gmail.com',
                      controller: emailController,
                      prefixIcon: Icons.person,
                    ),

                    const SizedBox(height: 10),

                    CustomTextfield(
                      label: 'Password',
                      hint: '*********',
                      controller: passwordController,
                      prefixIcon: Icons.lock,
                      isPassword: true,
                    ),

                    const SizedBox(height: 5),

                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: textForgPassword(context),
                      ),
                    ),

                    const SizedBox(height: 30),

                    CustomButton(
                      onPressed: () {
                        final email = emailController.text.trim();
                        final password = passwordController.text.trim();

                        context.read<AuthBloc>().add(
                          SignInRequested(email, password),
                        );
                      },
                      text: 'Login',
                      backgroundColor: AppColors.blue,
                      foregroundColor: AppColors.white,
                    ),

                    const SizedBox(height: 30),

                    Center(
                      child: Text(
                        '- Or Continue with -',
                        style: AppTypography.label1,
                      ),
                    ),

                    const SizedBox(height: 30),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GoogleButton(),
                        const SizedBox(width: 30),
                        AppleButton(),
                      ],
                    ),

                    const SizedBox(height: 30),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [textCreate(context)],
                    ),
                  ],
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
