import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_kg/features/auth/presentation/bloc/auth_event.dart';
import 'package:tap_kg/features/auth/presentation/pages/auth_wrapper.dart';
import 'package:tap_kg/features/auth/presentation/pages/home_page.dart';
import 'package:tap_kg/features/auth/presentation/pages/login_page.dart';
import 'package:tap_kg/features/auth/presentation/pages/registration_page.dart';
import 'package:tap_kg/features/auth/presentation/pages/splash_screen.dart';
import 'package:tap_kg/features/map/presentation/pages/map_page.dart';
import 'package:tap_kg/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:tap_kg/features/auth/presentation/bloc/auth_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthBloc(AuthRepositoryImpl())..add(AuthCheckRequested()),
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AuthWrapper(), 
      ),
    );
  }
}
