import 'package:flutter/material.dart';

class SocialInfo extends StatelessWidget {
  const SocialInfo(
      {super.key, required this.icon, required this.text, this.iconColor});
  final IconData icon;
  final String text;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: iconColor,
        ),
        const SizedBox(width: 5),
        Text(text),
      ],
    );
  }
}
