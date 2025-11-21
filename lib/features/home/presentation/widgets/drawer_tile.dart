import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({
    super.key,
    required this.icon,
    required this.title,
    // required this.isSelected,
    this.onTap,
  });

  final Widget icon;
  final String title;
  //final bool isSelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.only(left: 0),
        elevation: 0,
        backgroundColor: Color(0x19FFFFFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.07),
          side: BorderSide.none,
        ),
      ),
      child: ListTile(
        leading: icon,
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
