import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tap_kg/features/home/presentation/widgets/drawer_tile.dart';

class SettingsWidgets extends StatelessWidget {
  const SettingsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          DrawerTile(
            onTap: () {},
            icon: SvgPicture.asset(
              'assets/icons/svg/calendar.svg',
              color: Colors.white,
              width: 24,
              height: 24,
            ),
            title: 'Тарыхча',
          ),
          SizedBox(height: 12.07),
          DrawerTile(
            onTap: () {},
            icon: SvgPicture.asset(
              'assets/icons/svg/lang.svg',
              color: Colors.white,
              width: 24,
              height: 24,
            ),
            title: 'Тил',
          ),
          SizedBox(height: 12.07),
          DrawerTile(
            onTap: () {},
            icon: SvgPicture.asset(
              'assets/icons/svg/sun.svg',
              color: Colors.white,
              width: 24,
              height: 24,
            ),
            title: 'Тема',
          ),
          SizedBox(height: 12.07),
          DrawerTile(
            onTap: () {},
            icon: SvgPicture.asset(
              'assets/icons/svg/notification.svg',
              color: Colors.white,
              width: 24,
              height: 24,
            ),
            title: 'Билдируулор',
          ),
          SizedBox(height: 12.07),
          DrawerTile(
            onTap: () {},
            icon: SvgPicture.asset(
              'assets/icons/svg/faq.svg',
              color: Colors.white,
              width: 24,
              height: 24,
            ),
            title: 'FAQ',
          ),
        ],
      ),
    );
  }
}
