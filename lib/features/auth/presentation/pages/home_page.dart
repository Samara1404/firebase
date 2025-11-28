import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tap_kg/core/theme/app_colors.dart';
import 'package:tap_kg/core/theme/app_typography.dart';
import 'package:tap_kg/features/auth/presentation/widgets/custom_container.dart';

class HomePage extends StatelessWidget {
  
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'Привет \nНазик',
                style: AppTypography.headline1,
              ),
            ),

            const SizedBox(height: 10),

            
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [

                      CustomContainer(
                        iconPath: 'assets/icons/png/apple.png',
                        title: 'Жарнама түзүңүз!',
                        subtitle:
                            'Эгер бир нерсени таап же жоготкон \nболсоңуз кабарлаңыз.',
                        actions: const [],
                        onTap: () => context.go('/create-ad'),
                        backgroundColor: AppColors.blue,
                      ),

                      const SizedBox(height: 20),

                      CustomContainer(
                        iconPath: 'assets/icons/png/to_do.png',
                        title: 'Жоголгон жана табылган \nбуюмдар',
                        subtitle:
                            'Жоголгон жана табылган нерселерди карап \nчыгыңыз.',
                        actions: const [],
                        backgroundColor: AppColors.blue,
                      ),

                      const SizedBox(height: 20),

                      CustomContainer(
                        iconPath: 'assets/icons/png/google.png',
                        title: 'Картадан издөө',
                        subtitle: 'Жоголгон буюмдарды картадан издениз.',
                        actions: const [],
                        backgroundColor: AppColors.blue,
                      ),

                      const SizedBox(height: 20),
                        CustomContainer(
                        iconPath: 'assets/icons/png/google.png',
                        title: 'Картадан издөө',
                        subtitle: 'Жоголгон буюмдарды картадан издениз.',
                        actions: const [],
                        backgroundColor: AppColors.blue,
                      ),
                       const SizedBox(height: 20),
                        CustomContainer(
                        iconPath: 'assets/icons/png/google.png',
                        title: 'Картадан издөө',
                        subtitle: 'Жоголгон буюмдарды картадан издениз.',
                        actions: const [],
                        backgroundColor: AppColors.blue,
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
