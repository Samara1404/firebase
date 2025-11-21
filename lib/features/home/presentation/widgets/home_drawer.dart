import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_kg/core/theme/app_colors.dart';
import 'package:tap_kg/features/home/presentation/widgets/drawer_tile.dart';
import 'package:tap_kg/features/home/presentation/widgets/settings_widget.dart';
import 'package:tap_kg/features/home/presentation/widgets/user_profile_tile.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Drawer(
      width: size.width * 0.85,
      backgroundColor: AppColors.blue,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 55),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                iconSize: 40.24,
                padding: const EdgeInsets.only(left: 222),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Container(
                  width: 40.24,
                  height: 40.24,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.white, width: 2.01),
                  ),
                  child: Center(
                    child: Icon(Icons.close, size: 20, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 24),
              UserProfileTile(onTap: () {}),
              SizedBox(height: 24),
              Text(
                "Menu",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 24),
              Expanded(child: SettingsWidgets()),
              DrawerTile(
                onTap: () {
                  Navigator.pop(context);
                },
                icon: SvgPicture.asset(
                  'assets/icons/svg/escape.svg',
                  color: Colors.white,
                  width: 24,
                  height: 24,
                ),
                title: "Чыгуу",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
