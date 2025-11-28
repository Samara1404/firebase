import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_kg/core/theme/app_typography.dart';
import 'package:tap_kg/features/auth/presentation/widgets/logo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      
      context.go('/login');  
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogoWidget(size: 250),
            SizedBox(height: 30),
            Text('Tap_kg', style: AppTypography.headline0),
          ],
        ),
      ),
    );
  }
}