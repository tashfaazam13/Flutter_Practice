import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  // Properties
  IconData icon;
  String title;
  String? subtitle;

  IconText({required this.icon, required this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 20),
        Text(
          title,
          style: TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
        if (subtitle != null)
          Text(
            subtitle!,
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
      ],
    );
  }
}
