

import 'package:go_router/go_router.dart';
import 'package:tap_kg/features/auth/presentation/pages/create_an_adverticement.dart';
import 'package:tap_kg/features/auth/presentation/pages/forgot_password.dart';
import 'package:tap_kg/features/auth/presentation/pages/login_page.dart';
import 'package:tap_kg/features/auth/presentation/pages/registration_page.dart';
import 'package:tap_kg/features/auth/presentation/pages/splash_screen.dart';
import 'package:tap_kg/features/home/presentation/pages/home_page.dart';


final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => SplashScreen()),
    GoRoute(path: '/login', builder: (context, state) => LoginPage()),
    GoRoute(path: '/registration', builder: (context, state) => RegistrationPage()),
    GoRoute(path: '/forgot', builder: (context, state) => ForgotPassword()),
    GoRoute(path: '/home', builder: (context, state) => HomePage()),
    GoRoute(path: '/create-ad', builder: (context, state) => CreateAnAdvertisement()),
  ],
);