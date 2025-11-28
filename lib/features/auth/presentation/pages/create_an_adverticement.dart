import 'package:flutter/material.dart';
import 'package:tap_kg/core/theme/app_colors.dart';
import 'package:tap_kg/core/theme/app_typography.dart';
import 'package:tap_kg/features/auth/presentation/widgets/custom_app_bar.dart';
import 'package:tap_kg/features/auth/presentation/widgets/custom_button.dart';
import 'package:tap_kg/features/auth/presentation/widgets/custom_text_field.dart';

class CreateAnAdvertisement extends StatefulWidget {
  const CreateAnAdvertisement({super.key});

  @override
  State<CreateAnAdvertisement> createState() => _CreateAnAdvertisementState();
}

class _CreateAnAdvertisementState extends State<CreateAnAdvertisement> {
  
  final categoryController = TextEditingController();
  final titleController = TextEditingController();
  final dateController = TextEditingController();
  final addressController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  void dispose() {
    categoryController.dispose();
    titleController.dispose();
    dateController.dispose();
    addressController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Башкы',
        centerTitle: true,
        leading: [Icon(Icons.arrow_back_ios)],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(   
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Жарнама түзүү', style: AppTypography.label1),

              const SizedBox(height: 12),

              
              CustomTextfield(
                label: 'Категориялар',
                hint: 'Документ',
                controller: categoryController,
                prefixIcon: Icons.list,
              ),

              const SizedBox(height: 16),

              Text('Кабардын түрү', style: AppTypography.label1),

              const SizedBox(height: 12),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Жоголду', style: AppTypography.label1.copyWith(color: AppColors.blue)),
                  const SizedBox(width: 30),
                  Text('Табылды', style: AppTypography.label1.copyWith(color: AppColors.yellow)),
                ],
              ),

              const SizedBox(height: 20),

             
              CustomTextfield(
                label: 'Аталышы',
                hint: 'Паспорт',
                controller: titleController,
                prefixIcon: Icons.title,
              ),

              const SizedBox(height: 16),

            
              CustomTextfield(
                label: 'Табылган күн',
                hint: 'Датаны белгиле',
                controller: dateController,
                prefixIcon: Icons.calendar_today,
              ),

              const SizedBox(height: 16),

            
              CustomTextfield(
                label: 'Жоголгон буюмдун адреси',
                hint: 'Адрес жазыңыз',
                controller: addressController,
                prefixIcon: Icons.location_on,
              ),

              const SizedBox(height: 16),

              
              CustomTextfield(
                label: 'Жоголгон буюм жөнүндө маалымат',
                hint: 'Толук маалымат',
                controller: descriptionController,
                prefixIcon: Icons.info,
              ),

              const SizedBox(height: 20),

              CustomButton(
                text: 'Улантуу',
                onPressed: () {},
                backgroundColor: AppColors.yellow,
                foregroundColor: AppColors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
