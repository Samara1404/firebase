import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String iconPath;
  final String title;
  final String subtitle;
  final List<Widget> actions;
  final Color backgroundColor;
  final VoidCallback? onTap;

  const CustomContainer({
    super.key,
    required this.iconPath,
    required this.title,
    required this.subtitle,
    required this.actions,
    required this.backgroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white, 
          borderRadius: BorderRadius.circular(16),

          
          border: Border.all(
            color: Colors.grey.shade400,
            width: 2,
          ),
        ),

        child: Row(
          children: [
          
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.blue,
                  width: 3,
                ),
              ),
              child: Image.asset(
                iconPath,
                height: 28,
                width: 28,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(width: 16),

           
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),

            const Icon(Icons.arrow_forward_ios, size: 18),
          ],
        ),
      ),
    );
  }
}
