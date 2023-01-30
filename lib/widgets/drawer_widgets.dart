import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;

  const DrawerItemWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color:color,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
    );
  }
}
