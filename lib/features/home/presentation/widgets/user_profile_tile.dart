import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_kg/core/theme/app_colors.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({super.key, required this.onTap});

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: CircleAvatar(
          backgroundColor: AppColors.white,
          child: SvgPicture.asset(
            'assets/icons/svg/user2.svg',
            width: 24,
            height: 24,
          ),
        ),
        title: Text(
          "Tam_kg",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
