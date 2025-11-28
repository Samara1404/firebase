import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_kg/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:tap_kg/features/auth/presentation/bloc/auth_state.dart';
import 'package:tap_kg/features/auth/presentation/pages/login_page.dart';
import 'package:tap_kg/features/auth/presentation/pages/home_page.dart';
import 'package:tap_kg/features/auth/presentation/pages/splash_screen.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {

        if (state is AuthInitial || state is AuthLoading) {
          return const SplashScreen();
        }

        if (state is Authenticated) {
          return const HomePage();
        }

        if (state is Unauthenticated) {
          return const LoginPage();
        }

        return const SplashScreen();
      },
    );
  }
}
