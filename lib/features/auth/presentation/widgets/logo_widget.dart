import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final double size;
  final String path;

  const LogoWidget({
    super.key,
    this.size = 200,
    this.path = 'assets/icons/png/logo.png',
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:250,
      width: 250,
      child: Image.asset(
        path,
        fit: BoxFit.contain,
      ),
    );
  }
}