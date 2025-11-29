import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_kg/core/theme/app_colors.dart';
import 'package:tap_kg/core/theme/app_typography.dart';
import 'package:tap_kg/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:tap_kg/features/auth/presentation/bloc/auth_event.dart';
import 'package:tap_kg/features/auth/presentation/bloc/auth_state.dart';
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
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthLoading) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Каттоо жүрүп жатат...')),
              );
            }

            if (state is Authenticated) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Аккаунт ийгиликтүү түзүлдү')),
              );

              context.go('/home');
            }

            if (state is AuthError) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Ката: ${state.message}')));
            }
          },
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Create an \naccount', style: AppTypography.headline1),

                  const SizedBox(height: 30),

                  CustomTextfield(
                    label: 'Email',
                    hint: 'example@gmail.com',
                    controller: emailController,
                    prefixIcon: Icons.email,
                  ),

                  const SizedBox(height: 10),

                  CustomTextfield(
                    label: 'Password',
                    hint: '**********',
                    controller: passwordController,
                    prefixIcon: Icons.lock,
                    isPassword: true,
                  ),

                  const SizedBox(height: 10),

                  CustomTextfield(
                    label: 'Confirm Password',
                    hint: '**********',
                    controller: confirmPasswordController,
                    prefixIcon: Icons.lock,
                    isPassword: true,
                  ),

                  const SizedBox(height: 30),

                  CustomButton(
                    text: 'Create Account',
                    backgroundColor: AppColors.blue,
                    foregroundColor: AppColors.white,
                    onPressed: () {
                      final email = emailController.text.trim();
                      final password = passwordController.text.trim();
                      final confirm = confirmPasswordController.text.trim();

                      if (email.isEmpty ||
                          password.isEmpty ||
                          confirm.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Бардык талааларды толтуруңуз'),
                          ),
                        );
                        return;
                      }

                      if (password != confirm) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Пароль жана тастыктоо бирдей эмес'),
                          ),
                        );
                        return;
                      }

                      debugPrint('SIGN UP BUTTON PRESSED: $email');

                      context.read<AuthBloc>().add(
                        SignUpRequested(email, password),
                      );
                    },
                  ),

                  const SizedBox(height: 30),

                  const Center(child: Text('- OR Continue with -')),

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
